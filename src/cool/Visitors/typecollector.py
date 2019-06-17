import cool.Context.context2 as context
import cool.Visitors.visitor as visitor
from cool.AST.ast_hierarchy import * # Quitar el "Cool."
from cool.Context.lca import LCA
from queue import Queue

class LCABuild(object):
    def __init__(self, names):
        self.lca = LCA()
        self.names = names
        self.tuplas = []

    def DAG(self,parent_dict):
        #parent_dict["Object"].append["IO"]
        dag = []
        index = 0
        dag.append("Object")
        tuples = []
        while(index<len(dag)):
            news = parent_dict[dag[index]]
            for st in news:
                if not st in dag:
                    dag.append(st)
                    tuples.append((st,dag[index]))
                else:
                    raise Exception("TypeError: Cyclic hierarchy")
                    return (dag,False)
            index+=1
        valid = len(dag) == len(list(parent_dict.keys()))
        if not valid:
            raise Exception("TypeError: Cyclic hierarchy")
        return (dag,valid)

    def get(self, tuples):
        t_p = {}
        p_t = {}
        for t,p in tuples:
            p_t[t] = [] 
            p_t[p] = []
        for t,p in tuples:
            t_p[t] = p
            p_t[p].append(t)
        # p_t['Object'].append('IO')
        t_p["IO"] = 'Object'    
        dag,valid = self.DAG(p_t)
        result = []
        if valid:
            for typ in dag:
                if typ!="Object" and typ!="IO":
                    result.append((typ,t_p[typ]))
        return (result,valid)

    @visitor.on('node')
    def visit(self, node):
        pass

    @visitor.when(ProgramNode)
    def visit(self, node):
        builtin = {"Object":ClassNode("Object","Object",[]),
        "Int":ClassNode("Int","Object",[]),
        "String":ClassNode("String","Object",[]),
        "IO":ClassNode("IO","Object",[]),
        "Bool":ClassNode("Bool","Object",[]),
        }
        values = list(builtin.values()) + list(node.class_list.values())

        self.tuplas = [(nod.name, i_parent) for nod in values for i_parent,parent in enumerate(values) if nod.parent == parent.name]
        keys = list(node.class_list.keys())
        # indexes_parent = [for k in keys ]
        if len(keys) < len(self.names):
            raise Exception("TypeError: More than 1 type defined as same")
        list_tuples = [('IO', 'Object')]
        for _class in node.class_list:
            list_tuples.append((_class, node.class_list[_class].parent))
        orden, valid = self.get(list_tuples)
        if valid:
            for typ,_ in orden:
                self.visit(node.class_list[typ]) 
    
    @visitor.when(ClassNode)
    def visit(self, node):
        # if not node.parent in keys:
        #     raise Exception("La clase '{}' no existe".format(node.parent)) 
        self.lca.insert(node.name, node.parent)

class TypeCollector(object):
    def __init__(self, lca):
        self.context = context.Context()
        self.context.lca = lca

    @visitor.on('node')
    def visit(self, node):
        pass

    @visitor.when(ProgramNode)
    def visit(self, node):
        orden = self.context.lca.preorden()
        for _class in orden:
            self.visit(node.class_list[_class])
    
    @visitor.when(ClassNode)
    def visit(self, node):
        T = context.TypeEnviroment(node.name, node.parent)
        # M = self.context.get_M_by_class(node.parent)
        # O = self.context.get_O_by_class(node.parent)
        # T.M.add_M(M)
        # T.O.add_O(O)
        self.context.add(T)
        for feature in node.feature_list:
            self.visit(feature, node.name)

    @visitor.when(Atribute_Definition) # verificar si ya esta
    def visit(self, node, current_class):
        if self.context.is_defined_att(current_class, node.att_id)[0]:
            raise Exception("AttributeError: Attribute '{}' is already defined in class '{}' ".format(node.att_id, current_class))
        self.context.list_T[current_class].O.add(node.att_id, node.att_type)

    @visitor.when(Method_Definition) # verificar si ya esta
    def visit(self, node, current_class):
        idm = node.meth_id
        params = ()
        for param in node.param_list:
            params += self.visit(param)
        params += ((node.return_type,),)
        defined,cl = self.context.is_defined_method(current_class, idm)
        if defined:
            if cl == current_class:
                raise Exception("AttributeError: Method '{}' is already defined in class '{}' ".format(idm,cl))
            other_params = self.context.get_method_params(current_class, idm) + (self.context.get_return_param(current_class, idm),)
            if params != other_params:
                raise Exception("AttributeError: Can't override method '{}' with this parameters".format(idm))
        self.context.list_T[current_class].M.add(idm, params)

    @visitor.when(ParamNode)
    def visit(self, node):
        return ((node.par_id, node.par_type),)