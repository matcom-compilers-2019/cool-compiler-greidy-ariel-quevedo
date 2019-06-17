from cool.AST.ast_cil import LocalCIL
from cool.Context.lca import LCA

class Context(object):
    def __init__(self):
        self.list_T = {}
        self.lca = LCA()
        # self.scope = Scope()
        self.builtin()

    def builtin(self):
        T = TypeEnviroment("Object")
        T.M.add("abort",(("Object",),))
        T.M.add("type_name",(("String",),))
        T.M.add("copy",(("SELF_TYPE",),))
        self.add(T)
        T = TypeEnviroment("String","Object")
        T.M.add("length",(("Int",),))
        T.M.add("concat",(("s","String"),("String",)))
        T.M.add("substr",(("i","Int"),("l","Int"),("String",)))
        M = self.get_M_by_class("Object")
        T.M.add_M(M)
        self.add(T)
        T = TypeEnviroment("Int", "Object")
        T.M.add_M(M)
        self.add(T)
        T = TypeEnviroment("Bool", "Object")
        T.M.add_M(M)
        self.add(T)
        T = TypeEnviroment("IO", "Object")
        T.M.add("out_string", (("x","String"),("SELF_TYPE",)))
        T.M.add("out_int", (("x","Int"),("SELF_TYPE",)))
        T.M.add("in_string", (("String",),))
        T.M.add("in_int", (("Int",),))
        T.M.add_M(M)
        self.add(T)

    def add(self, T):
        self.list_T[T.current_class] = T

    def is_defined_type(self, _type):
        return _type in self.list_T.keys()

    def is_defined_method(self, current_class, id):
        if current_class == None:
            return (False, None)
        if self.list_T[current_class].M.is_defined(id):
            return (True, current_class)
        else:
            parent = self.list_T[current_class].parent
            return self.is_defined_method(parent, id)

    def is_defined_att(self, current_class, id):
        if current_class == None:
            return (False, None)
        if self.list_T[current_class].O.is_defined(id):
            return (True, current_class)
        else:
            parent = self.list_T[current_class].parent
            return self.is_defined_att(parent, id)

    def get_O_by_class(self, current_class):
        O = ObjectEnviroment(current_class)
        # O.add_O(self.list_T[current_class].O)
        while current_class != None:
            O.add_O(self.list_T[current_class].O)
            current_class = self.list_T[current_class].parent
        return O

    def get_list_id(self, current_class):
        list_id = []
        # O.add_O(self.list_T[current_class].O)
        while current_class != None:
            list_id = self.list_T[current_class].O.list_id + list_id
            current_class = self.list_T[current_class].parent
        return list_id

    def get_M_by_class(self, current_class):
        M = MethodEnviroment(current_class)
        # M.add_M(self.list_T[current_class].M)
        while current_class != None:
            M.add_M(self.list_T[current_class].M)
            current_class = self.list_T[current_class].parent
        return M

    def get_obj_type(self, current_class, id):
        defined = self.is_defined_att(current_class, id)
        if defined[0]:
            O = self.get_O_by_class(defined[1])
            return O.get_type(id)

    def get_method_params(self, current_class, id):
        defined = self.is_defined_method(current_class, id)
        if defined[0]:
            M = self.get_M_by_class(defined[1])
            return M.get_params_type(id)

    def get_return_param(self, current_class, id):
        defined = self.is_defined_method(current_class, id)
        if defined[0]:
            M = self.get_M_by_class(defined[1])
            return M.get_return_type(id)

    def __str__(self):
        r = ""
        for key in self.list_T.keys():
            r += str(self.list_T[key])
        return r

class TypeEnviroment(object):
    def __init__(self, current_class, parent = None):
        self.current_class = current_class
        self.parent = parent
        self.O = ObjectEnviroment(self.current_class)
        self.M = MethodEnviroment(self.current_class)

    def __str__(self):
        r = self.current_class + ":\n"
        r += str(self.O)
        r += str(self.M)
        r += '\t' + str(self.parent) + "\n"
        return r

class ObjectEnviroment(object):
    def __init__(self, current_class = None):
        self.current_class = current_class
        self.map = {}
        self.id_local = {}
        self.list_id = []

    def add(self, id, _type, local_count = 0):
        self.map[id] = _type
        self.list_id.append(id)
        self.id_local[id] = LocalCIL("x__{}".format(local_count))

    def add_O(self, O):
        if O == None:
            return 
        for key in O.map.keys():
            self.add(key, O.map[key])

    def is_defined(self, id):
        return True if id in self.map.keys() else False

    def get_type(self, id):
        return self.map[id]

    def get_local(self, id):
        return self.id_local[id]

    def save_value(self, id, value):
        self.id_local[id].value = value

    def __str__(self):
        r = ""
        for id in self.map.keys():
            r += "\t" + id + " : " + self.map[id] + "\n"
        return r

class MethodEnviroment(object):
    def __init__(self, current_class):
        self.current_class = current_class
        self.map = {}

    def add(self, id, tupla_type): # tupla de tupla (id,type)
        self.map[id] = tupla_type

    def add_M(self, M):
        if M == None:
            return 
        for key in M.map.keys():
            self.add(key, M.map[key])

    def is_defined(self, id):
        return True if id in self.map.keys() else False

    def get_params_type(self, id):
        return self.map[id][:-1]

    def get_return_type(self, id):
        return self.map[id][-1]

    def __str__(self):
        r = ""
        for id in self.map.keys():
            r += "\t" + id + str(self.map[id]) + "\n"
        return r


class Scope(object):
    def __init__(self, current_class):
        O = ObjectEnviroment(current_class)
        O.add("self", current_class)
        self.list_scope = [O]

    def get_last_O(self):
        return self.list_scope[-1]

    def new_scope(self, O : ObjectEnviroment):
        self.list_scope.append(O)

    def add(self, id, xtype, local_count = 0):
        self.list_scope[-1].add(id, xtype, local_count)

    def is_defined(self, id):
        for obj in self.list_scope[::-1]:
            if obj.is_defined(id):
                return (True, obj.get_type(id))
        return (False, None)

    def is_attr(self, id):
        for obj in self.list_scope[:2]:
            if obj.is_defined(id):
                return True
        return False

    def get_index(self, id):
        obj = self.list_scope[1]
        for i,idx in enumerate(obj.map.keys()):
            if idx == id:
                return i

    def is_defined_local(self, id):
        for obj in self.list_scope[::-1]:
            if obj.is_defined(id):
                i = self.list_scope.index(obj)
                return (True, obj.get_local(id), (self.is_attr(id)) and (i<2))
        return (False, None, False)

    def end_scope(self):
        self.list_scope.pop()