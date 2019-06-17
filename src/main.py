from cool.Parsing.Lexer import Lexer
from cool.Parsing.Parser import Parser
# from cool.Visitors.ast_painter import Painter
from cool.Visitors.typecollector import TypeCollector, LCABuild
from cool.Visitors.checktypes import CheckTypes
from cool.Visitors.cil_visitor import CIL_Tree
from cool.Visitors.mips_visitor import MIPS
from cool.Visitors.ast_cil_painter import CILPainter
import os
import sys
# Dan false: complex.cl, new_complex.cl
# Hay un parche en typecollector.py > LCABuild > ProgramNode

def run(temp, fd = "1", i = 1):
    try:
        camino = os.getcwd() + "\\"
        print("COOL Compiler version:3021.4")
        print("COOL Compiler copyright c")
        with open(camino+temp,"r") as fd_read:
            l = Lexer()
            p = Parser(l)
            string = fd_read.read(-1) 
            times = 20-len(fd)
            # painter = Painter()
            ast = p.parse(string)
            
            # print("-----------------LCABuild-------------------")
            lca = LCABuild(p.names)
            lca.visit(ast)
            # print(lca.lca)
            # print(lca.lca.preorden())

            # print("-----------------TypeCollector-------------------")
            tc = TypeCollector(lca.lca)
            tc.visit(ast)
            # print(tc.context)

            # print("-----------------CheckSemantic-------------------")
            ct = CheckTypes(tc.context)
            result = ct.visit(ast,[],"")
            # print("{}{}-{} {}>{}".format(" "*50,i,fd,("-"*times),result))

            cil = CIL_Tree(tc.context)
            ast_cil = cil.visit(ast,"")
            cilP = CILPainter()
            # print()
            mips_text = open(camino+"ex1.cil","w+")
            mips_text.write(cilP.visit(ast_cil,0))
            mips_text.close()

            # print("-----------------MIPS-------------------")
            # print(lca.tuplas)
            mips = MIPS(lca.tuplas)
            text = mips.visit(ast_cil)
            # print(text)
            mips_text = open(camino+"ex1.asm","w+")
            mips_text.write(text)
            mips_text.close()
    except Exception as e:
        # print(e)
        print(e)

# camino = os.getcwd() + '\\examples'
# camino = os.getcwd() + '\\examples_2'
# camino = os.getcwd() + '\\casitos'
# archivos = os.listdir(camino)

# run(camino+"\\add.cl")
# run("casitos\\bigbig.cl")

def main(*arg):
    l = list(*arg)
    "".rfind(".")
    return str(l[1])

if __name__ == "__main__":
    path = main(sys.argv)
    run(path)
# for i,fd in enumerate(archivos):
#     # if fd in ['book_list.cl','sort_list.cl']:
#     #     continue
#     temp = camino + "\\" + fd
#     run(temp,fd=fd,i=i)
