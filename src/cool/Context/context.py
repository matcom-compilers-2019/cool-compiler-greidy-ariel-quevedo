import itertools as itl
import math as m
from scope import *
from queue import Queue 
from ast_hierarchy import *
import ast_hierarchy as ast
import visitor

#Poner esto en utils.py???

#Ver donde se pone Object por default
#Poner los collectors en otro py
class TypeCollector():

    def __init__(self,tree):
        self.context = Context()
        self.visit(tree,None,[])

    @visitor.on('node')
    def visit(self, node, scope, errors):
        pass

    @visitor.when(ast.ProgramNode)
    def visit(self, node, scope, errors):
        for cls in node.class_list:
            self.visit(cls,scope,errors)

    @visitor.when(ast.ClassNode)
    def visit(self,node,scope,errors):
        self.context.O.create_type(node.name,node)


class MethodCollector():

    def __init__(self,ast2,context):
        self.context = context
        self.visit(ast2,None,[])

    @visitor.on('node')
    def visit(self, node, scope, errors):
        pass

    @visitor.when(ast.ProgramNode)
    def visit(self, node, scope, errors):
        for cls in node.class_list:
            self.visit(cls,scope,errors)

    @visitor.when(ast.ClassNode)
    def visit(self,node,scope,errors):
        for feature in node.feature_list:
            self.visit(feature,scope,node.name,errors)

    #Ver que se puede chequear ya en la definicion de atributos
    @visitor.when(ast.Atribute_Definition)
    def visit(self, node, scope, class_name ,errors):
        pass

    @visitor.when(ast.Method_Definition)
    def visit(self,node,scope,class_name,errors):
        l = node.param_list
        l.append(node.return_type)
        self.context.M.create_method(class_name, node.meth_id, l)


#Concatenar algo a la variable
class ObjectContext:

    def __init__(self):
        self.map = {}
        self.types = {}

    def create_type(self,type_name,_type):
        self.types[type_name] = _type

    def define_symbol(self,var,type_name):
        if _type not in self.types.keys():
            pass #Poner excepcion de que ese tipo no esta definido

        #Ver si es mejor poner el tipo o el nombre
        self.map[var] = type_name

    def get_type(self,type_name):
        return self.types[type_name]

    def get_type_for(self,var):
        return self.map[var]

    def get_total_types(self):
        return len(self.types.keys())

    def get_types_names(self):
        return self.types.keys()


class MethodContext:

    def __init__(self):
        self.map = {}

    def create_method(self,type_name,name,params):
        self.map[(type_name,name)] = params


class Context:
    def __init__(self):
        self.map = {}
        self.O = ObjectContext()
        self.M = MethodContext()
        self.scope = Scope()


    #Revisar con casos mas complicados 
    def initialize_structures_bfs(self):
        #Array de las distancias para el BFS
        self.d = {}
        for type_name in self.O.get_types_names():
            self.d[type_name] = -1
        #self.preprocces_lca()
    

    def initialize_structures_lca(self):
        self.levels = {}
        self.levels["Object"] = 1

        for type_name in self.O.get_types_names():
            self.d[type_name] = -1

            node = type_name
            parent = self.O.get_type(node).parent 
            path = []
            level_keys = self.levels.keys()

            print("Este es el nodo",node)
            if parent != None:
                print("Este es el padre",parent.name)
            
            while parent != None:
                 path.append(node)
                 node = parent.name
                 parent = parent.parent

            if node not in level_keys:
                self.levels[node] = 1

            level = self.levels[node]

            print("Este es el nodo y su nivel",node,self.levels[node])

            for i in range(len(path)):
                self.levels[path[i]] = level + (len(path) - i)
                print("Este es el level final",path[i],self.levels[path[i]])
        

    #Ya compila pero aun hay que revisar bien como queda P
    def preprocces_lca(self):
        #Ver como se pone el logaritmo en Python
        self.n = self.O.get_total_types()
        self.P = [[-1 for _ in range(self.n + 1)] for _ in range(int(m.log(self.n,2) + 1))]

        types = self.O.get_types_names()
        types = list(types)

        for i in range(self.n):
            node = self.O.get_type(types[i])
            if node.parent != None:
                self.P[i][0] = node.parent.name

        j = 1
        while((1 << j) < self.n):

            for i in range(self.n):
                if self.P[i][j - 1] != -1:
                    self.P[i][j] = self.P[self.P[i][j - 1]][j - 1]

            j+=1

    def query_lca(self,typeP,typeQ):

        if self.levels[typeP] < self.levels[typeQ]:
            typeP,typeQ = typeQ,typeP

        log = 1
        while (1 << log) <= self.levels[typeP]:
            log += 1
        log -= 1

        for i in range(log,0,-1):
            if (self.levels[typeP] - (1 << i)) >= self.levels[typeQ]:
                typeP = self.P[typeP][i]

        if typeP == typeQ:
            return typeP

        for i in range(log,0,-1):
            if self.P[typeP][i] and self.P[typeP][i] != self.P[typeQ][i]:
                typeP = self.P[typeP][i], typeQ = self.P[typeQ][i]

        return self.O.get_type(typeP).parent.name

    def check_cyclic_inheritance(self):
        #BFS
        queue = Queue()
        nodes = list(self.O.types.keys())#Poner de otra forma
        s = nodes[0]
        queue.put(s)
        self.d[s] = 0

        while not queue.empty():
            u = queue.get()
            u = self.O.get_type(u)

            # print("Estoy procesando a", u.name,self.d[u.name])
            # print("Este es su padre",u.parent.name,self.d[u.parent.name])

            if u.parent == None:
                return False

            elif self.d[u.parent.name] == -1:
                self.d[u.parent.name] = self.d[u.name] + 1
                queue.put(u.parent.name)

            else:
                #Lanzar excepcion de herencia ciclica
                return True

        return False

    def define_variable(self, vname):
        return scope.define_variable(self,vname)

    def create_child_context(self):
        context = Context()
        context.O = self.O
        context.M = self.M
        context.scope = self.scope.create_child_scope()
        return context

    #Ver si tengo que tner en cuenta los tipos aqui
    def is_defined(self, vname):
        return scope.is_defined(vname)

    def get_variable_info(self, vname):
        return scope.get_variable_info(vname)

    def is_local(self, vname):
        return scope.is_local(vname)

    def get_local_variable_info(self, vname):
        return scope.get_local_variable_info(vname)

    @staticmethod
    def find_variable_info(vname, scope, top=None):
        return scope.find_variable_info(vname,scope,top)


class1 = ClassNode("c1",None,[])

m1 = Method_Definition("test",[1,2,3],"c1",None)
fl = [m1]

class2 = ClassNode("c2",class1,fl)
# class1.parent = class2
# class3
# class4
# class5
# class6
# class7
# class8
# class9
# class10



cl = [class1,class2]
ast2 = ProgramNode(cl)

#Chequeo de los tipos que hay
O = TypeCollector(ast2)
print(O.context.O.types)

#Chequeo de los metodos
M = MethodCollector(ast2,O.context)
print(M.context.M.map)

context = M.context

context.initialize_structures_bfs()

ans = context.check_cyclic_inheritance()
print(ans)


#Ver si le asigno ids a los nodos, o hago P de otra forma
#print(context.query_lca("c1","c2"))

