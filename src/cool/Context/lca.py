import math as m
from queue import Queue 
from cool.AST.ast_hierarchy import *

class LCA():
    
    def __init__(self):
        #Poner los features de object
        self.root = ClassNode("Object",None,[])
        self.graph = {} ##Nodo contra su lista de hijos
        self.type = {}  #Dado el nombre de un tipo te devuelve su instancia como nodo del AST
        self.level = {} #Nivel de profundidad en el arbol
        self.graph["Object"] = []
        #Falta crear al object
        self.type["Object"] = self.root
        self.level["Object"] = 0

        self.d = {} #Marcar visitas
        self.d["Object"] = -1

        #LCA structures:
        self.p = {}
        self.p["Object"] = {}
        self.p["Object"][0] = -1

        self.insert("IO", "Object")
        self.insert("Int", "Object")
        self.insert("String", "Object")
        self.insert("Bool", "Object")

    def preorden(self):
        l = ["Object"]
        q = Queue()
        q.put("Object")
        while not q.empty():
            x = q.get()
            l += self.graph[x]
            for _class in self.graph[x]:
                q.put(_class)
        return l[5:]

    def __str__(self):
        s = ""
        for node in self.graph.keys():
            for child in self.graph[node]:
                s += child + " hereda de " + node + "\n"
        return s

    def clean_d(self):
        for node in self.graph.keys():
            self.d[node] = -1

    def insert(self,T1,parent):
        # print("INSERTANDO ", T1)
        self.graph[T1] = []
        self.graph[parent].append(T1)
        self.d[T1] = -1

        #T1.parent = parent

        #self.type[T1.name] = T1
        self.level[T1] = self.level[parent] + 1

        self.check_cyclic_inheritance()

        n = len(self.graph.keys())
        # print("ESTE ES EL N",n)

        #Update LCA
        self.p[T1] = {}
        self.p[T1][0] = parent

        j = 1
        while (2**j) < n + 1:
            self.p[T1][j] = -1
            j += 1
            
        j = 1
        while (2**j) < n:
            if self.p[T1][j - 1] != -1 and (j-1) in self.p[self.p[T1][j - 1]].keys():
                self.p[T1][j] = self.p[self.p[T1][j - 1]][j - 1]
            j += 1


    def find(self,T1):
        return T1 in self.graph.keys()

    #T1 <= T2
    def conform(self,T1,T2):
        if T1 == T2 or T1 == "SELF_TYPE" or T2 == "SELF_TYPE":
            return True
        self.clean_d()
        queue = Queue()
        #nodes = list(self.graph.keys())#Poner de otra forma
        s = T2
        queue.put(T2)
        self.d[s] = 0

        while not queue.empty():
            u = queue.get()
            #u = self.type[u]

            # print("Estoy procesando a", u.name,self.d[u.name])
            # print("Este es su padre",u.parent.name,self.d[u.parent.name])

            for child in self.graph[u]:

                if child == T1:
                    return True

                elif self.d[child] == -1:
                    self.d[child] = self.d[u] + 1
                    queue.put(child)


        return False
    
    
    def get_lca(self,T1,T2):
        if T1 == "SELF_TYPE":
            return T2
        if T2 == "SELF_TYPE":
            return T1
        a = T1
        b = T2
        tmp = None
        log = 1

        if self.level[a] < self.level[b]:
            tmp = a
            a = b
            b = tmp
        
        while (2**log) <= self.level[a]:
            log+=1
        
        log-=1


        for i in range(log,-1,-1):
            if (self.level[a] - (2**i)) >= self.level[b]:
                a = self.p[a][i]
        
        if a == b:
        	if a == T1:
        		return T1
        	else:
        		return T2
        

        for i in range(log,-1,-1):
        	if self.p[a][i] != -1 and self.p[a][i] != self.p[b][i]:
        		a = self.p[a][i]
        		b = self.p[b][i]
        		if a == "Object" or b == "Object":
        			return "Object"
        
        return self.p[a][0]
        


    def check_cyclic_inheritance(self):

        # print("Chequeando ciclos")
        #BFS
        self.clean_d()
        queue = Queue()
        #nodes = list(self.graph.keys())#Poner de otra forma
        s = self.root
        queue.put(s.name)
        self.d[s.name] = 0

        while not queue.empty():
            u = queue.get()
            #u = self.type[u]

            # print("Estoy procesando a", u,self.d[u])

            #if u.parent:
            #    print("Este es su padre",u.parent.name,self.d[u.parent.name])

            for child in self.graph[u]:

                if self.d[child] == -1:
                    self.d[child] = self.d[u] + 1
                    queue.put(child)

                else:
                    #Lanzar excepcion de herencia ciclica
                    print("CICLOOOOOOOOO")
                    return True


        return False


# class1 = ClassNode("Object",None,[])

# class2 = ClassNode("c2",None,[])
# class3 = ClassNode("c3",None,[])
# class4 = ClassNode("c4",None,[])
# class5 = ClassNode("c5",None,[])
# class6 = ClassNode("c6",None,[])
# class7 = ClassNode("c7",None,[])
# class8 = ClassNode("c8",None,[])
# class9 = ClassNode("c9",None,[])
# class10 = ClassNode("c10",None,[])
# class11 = ClassNode("c11",None,[])
# class12 = ClassNode("c12",None,[])
# class13 = ClassNode("c13",None,[])


# t = LCA()

# t.insert(class2.name,class1.name)
# t.insert(class3.name,class1.name)
# t.insert(class4.name,class1.name)
# t.insert(class5.name,class3.name)
# t.insert(class6.name,class3.name)
# t.insert(class7.name,class3.name)
# t.insert(class8.name,class6.name)
# t.insert(class9.name,class6.name)
# t.insert(class10.name,class7.name)
# t.insert(class11.name,class7.name)
# t.insert(class12.name,class10.name)
# t.insert(class13.name,class10.name)
# #t.insert(class5,class1) CICLO

# print(t.conform(class2.name,class1.name))
# print(t.conform(class12.name,class1.name))
# print(t.conform(class9.name,class3.name))
# print(t.conform(class12.name,class2.name))

# print(t.get_lca(class8.name,class12.name))
# print(t.get_lca(class13.name,class12.name))
# print(t.get_lca(class10.name,class12.name))
# print(t.get_lca(class5.name,class4.name))