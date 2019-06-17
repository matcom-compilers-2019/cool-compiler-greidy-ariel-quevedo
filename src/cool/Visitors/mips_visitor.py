from cool.AST.ast_cil import *
import cool.Visitors.visitor as visitor
import cool.Context.context2 as enviroment

class MIPS(object):
    
    # En $t0 esta el valor resultante de la expresion derecha
    # Faltan:
        # ProgramCIL            ok
        # TypeCIL               ok
        # AttributeCIL
        # MethodCIL             ok
        # DataCIL               ok
        # MessageCIL            ok
        # CodeCIL               ok
        # FunctionCIL           ok
        # AssignCIL             ok
        # ReadStringCIL         ok
        # ReadIntegerCIL        ok
        # LengthCIL             -- cuando haga String COOL->CIL
        # ConcatCIL             -- cuando haga String COOL->CIL
        # SubStrCIL             -- cuando haga String COOL->CIL
        # STRCIL                -- cuando haga String COOL->CIL
        # PlusCIL               ok
        # MinusCIL              ok
        # StarCIL               ok
        # DivCIL                ok
        # ParamCIL              ok
        # ArgCIL                ok
        # AbortCIL              ok
        # PrintStringCIL        ok
        # PrintIntegerCIL       ok
        # AllocateCIL           ok
        # TypeofCIL             ok
        # CallCIL               -- no hace falta
        # VCallCIL              ok
        # IfGotoCIL             ok
        # GotoCIL               ok
        # LabelCIL              ok
        # ReturnCIL             -- quitar
        # LoadCIL               ok
        # IntegerCIL            ok
        # IsvoidCIL             ok
        # EqualsCIL             ok
        # LessThanCIL           ok
        # LessThanEqualsCIL     ok
        # GetAttrCIL            ok
        # SetAttrCIL            ok
    def __init__(self, tuplas):
        self.case_data = ""
        self.counter = 0
        self.tuplas = tuplas
        self.list_local = []
        self.method_set = set()

    def builtin(self):
        find = "find:\nmove $s4, $ra\nmove $s5, $s3\nmove $a1, $t3\nli $t2, 0 \nfind_loop:\nli $a0, 4\nmult	$t2, $a0\nmflo	$a0\nadd $t3, $a1, $a0\nmove $s3, $s5\nlw $s2, 0($t3)\njal cmploop\naddi $t2, $t2, 1\nbeq $t2, $s1, end_not\nbeq $a0, $0, find_loop\nend:\naddi $t2, $t2, -1\nli $s3, 1\njr $s4\nend_not: \nli $a3, 1\nli $s3, 0\nbeq $a0, $a3, end \njr $s4\n"
        cmploop = "cmploop:\nlb $t4,($s2)\nlb $t3,($s3)\nbne $t4,$t3,cmpne\nbeq $t4,$zero,cmpeq\naddi $s2,$s2,1\naddi $s3,$s3,1\nj cmploop\n"
        cmpne = "cmpne:\nli $a0,0\njr $ra\n"
        cmpeq = "cmpeq:\nli $a0,1\njr $ra\n"
        lenght = "lenght:\nmove $t1, $zero\n"
        lenght_loop = "lenght_loop:\nlb $t0, ($a0)\nbeq $t0, $zero, end_lenght\naddi $t1,$t1,1\naddi $a0,$a0,1\nj lenght_loop\n"
        end_lenght = "end_lenght:\nmove $a1, $t1\njr $ra\n"
        save_string = "save_string:\nmove $s7, $ra\nmove $s6, $a0\njal lenght\naddi $a1,$a1,1\nmove $a0, $a1\nli $v0, 9\nsyscall\nmove $a2, $v0\nmove $a3, $v0\nmove $t0, $s6\n"
        save_string_loop = "save_string_loop:\nlb $t1, ($t0)\nbeq $t1, $0, end_save_string\nsb	$t1, 0($a2)\naddi $t0, $t0, 1\naddi $a2, $a2, 1\nj save_string_loop\n"
        end_save_string = "end_save_string:\nmove $a2, $a1\nmove $a1, $a3\njr $s7\n"
        
        save_string_2 = "save_string_2:\nmove $s7, $ra\nmove $s6, $a0\njal lenght\naddi $a1,$a1,1\nmove $a0, $a1\nli $v0, 9\nsyscall\nmove $a2, $v0\nmove $a3, $v0\nmove $t0, $s6\n"
       
        save_string_loop_2 = "save_string_loop_2:\nlb $t1, ($t0)\nli $t2 10\nbeq $t1, $t2, end_save_string_2\nsb	$t1, 0($a2)\naddi $t0, $t0, 1\naddi $a2, $a2, 1\nj save_string_loop_2\n"
       
        end_save_string_2 = "end_save_string_2:\nmove $a2, $a1\nmove $a1, $a3\njr $s7\n"
        concat_string = "concat_string:\nmove $s7, $ra\nmove $s6, $a0\nmove $s5, $a1\njal lenght\nmove $a3, $a1\nmove $a0, $s5\njal lenght\nadd $a3, $a3, $a1\naddi $a3,$a3,1\nmove $a0, $a3\nli $v0, 9\nsyscall\nmove $s4, $v0\nmove $s3, $v0\nmove $t0, $0\nmove $t2, $s6\n"
        concat_string_loop = "concat_string_loop:\nlb $t1, ($t2)\nbeq $t1, $0, step_concat\nsb $t1, ($s4)\naddi $t2, $t2 , 1\naddi $s4, $s4, 1\nj concat_string_loop\n"
        step_concat = "step_concat:\naddi $t0, 1\nli $t4, 2\nmove $t2, $s5\nbne $t4, $t0, concat_string_loop\n"
        end_concat = "end_concat:\nmove $a1, $s3\njr $s7\n"
        sub_string = "sub_string:\nadd $a1,$a1,$a0\nadd $a3, $a2, $a1\nadd $a2, $a2, $a0\nsub $a0, $a1, $a0\naddi $a0, $a0, 1\nli $v0, 9\nsyscall\nmove $a1, $v0\nmove $t2, $v0\n"
        sub_string_loop = "beq $a2,$a3,sub_string_end\nsub_string_loop:\nlb $t0, ($a2)\nsb $t0, ($t2)\naddi $t2,$t2,1\naddi $a2, $a2,1\nbne $a2, $a3, sub_string_loop\nsub_string_end:\njal $ra\n"
        copy = "copy:\nmove $t1, $a0\nli $t2, 0\nlw $t0, ($a0)\nlw $a0, ($t0)\nmove $t6, $a0\nli $t5, 4\nmult	$a0, $t5			\nmflo	$a0					\nli $v0, 9\nsyscall\nmove $t5, $v0\nmove $a1, $v0\ncopy_loop:\nlw $t3, ($t1)\nsw $t3, ($t5)\naddi $t2, $t2, 1\naddi $t1, $t1, 4\naddi $t5, $t5, 4\nbne $t2, $t6, copy_loop\njal $ra\n"
        return copy + save_string_2 + save_string_loop_2+end_save_string_2+find+cmploop+cmpne+cmpeq+lenght+lenght_loop+end_lenght+save_string+save_string_loop+end_save_string+concat_string+concat_string_loop+step_concat+end_concat+sub_string+sub_string_loop

    def search_offset(self, name):
        for i,local in enumerate(self.list_local):
            if local.name == name:
                return (len(self.list_local) - i)*4

    def create_hierarchy(self):
        # tuplas = [("\""+node.name+"\"", i_parent) for node in class_list for parent,i_parent in enumerate(class_list) if node.parent == parent]
        names_type = []
        indexes = []
        for name, index in self.tuplas:
            names_type.append("data_"+name)
            indexes.append(str(index))
        return names_type, indexes


    @visitor.on('node')
    def visit(self, node, current_class):
        pass

    @visitor.when(ProgramCIL)
    def visit(self, node):
        data = "temp_string: .space 1024\n"
        main = ""
        code_to_main = ""

        types,indexes = self.create_hierarchy()
        data += "types_hierarchy: .word {}\n".format( ",".join(types))
        data += "parent_indexes: .word {}\n".format(" ,".join(indexes))

        for t in node.type_list:
            data += self.visit(t)

        for d in node.data_list:
            values = self.visit(d)
            data += values[0]
            code_to_main += values[1]
        data +="isvoid: .word 0\n"
        values = self.visit(node.code, code_to_main)
        data += values[0]
        main += values[1]
        data += self.case_data
        text = ".data\n{}\n.text\n.globl main\n{}\n".format(data, main)
        return text

    @visitor.when(TypeCIL)
    def visit(self, node):
        name = node.name
        name_method = name + "_method"

        cant_b = (len(node.attr_list) + 1) * 4
        # for att in node.attr_list:
        #     s += self.visit(att)
        data_type = ""
        old_name_list = []
        new_name_list = []
        for meth in node.method_list:
            # hacer un set de metodos para y guardar variable (name_method: .asciiz "name_method")
            old_name, new_name = self.visit(meth)
            # save_name = "_"+node.name+"_"+old_name
            if not old_name in self.method_set:
                self.method_set.add(old_name)
                data_type += "{}: .asciiz {}\n".format(old_name+"_","\""+ old_name+"\"")
            old_name_list.append(old_name+"_")
            new_name_list.append(new_name)

        data_type += "{}: .asciiz \"{}\"\n".format("data_"+name, name)
        data_type += "{}: .word {}\n{}: .word {}, {}, data_{},{}\n".format(name_method,",".join(old_name_list),name, cant_b, name_method, name, ",".join(new_name_list))
        return data_type

    @visitor.when(MethodCIL)
    def visit(self, node):
        return node.old_name, node.name

    @visitor.when(CodeCIL)
    def visit(self, node, code_to_main):
        data = ""
        main = ""
        for f in node.function_list:
            values = self.visit(f, code_to_main)
            data += values[0]
            main += values[1]

        main += self.builtin()
        return data, main

    @visitor.when(FunctionCIL)
    def visit(self, node, code_to_main):
        data = ""
        main = "{}:\n".format(node.name)
        self.list_local = [arg.arg for arg in node.arg_list[::-1]] + node.locals_list
        # print([n.name for n in self.list_local])
        for _local in node.locals_list:
            name = self.visit(_local)
            if name == "isvoid":
                main += "addi $sp, $sp, -4\nlw $t1, isvoid\nsw $t1, 0($sp)\n"
            else:    
                main += "addi $sp, $sp, -4\nli $t1, 0\nsw $t1, 0($sp)\n"

        main += "addi $sp, $sp, -4\nsw $ra, 0($sp)\n"
        # for i,_arg in enumerate(node.arg_list):
        #     main += self.visit(_arg, i + len(node.locals_list) + 1)

        if node.name == "main":
            main += "li $a0, 1\nli $v0, 9\nsyscall\nsw $v0, isvoid($zero)\n"
            main += code_to_main
        for _code in node.expr_list:
            main += self.visit(_code)

        l = len(self.list_local)

        main += "lw $ra, ($sp)\naddi $sp, $sp, {}\njr $ra\n".format((l+1)*4)  # Fin de la rutina
        return data, main

    @visitor.when(LocalCIL)
    def visit(self, node):
        return node.name

    @visitor.when(AssignCIL)
    def visit(self, node):
        variable0 = self.visit(node.local)
        main = ""
        main1 = self.visit(node.right_expr)
        i = self.search_offset(variable0)
        if type(node.right_expr) is LocalCIL:
            j = self.search_offset(main1)
            l = "lw $t0, {}($sp)\nsw $t0, {}($sp)\n".format(j, i)
        else:
            main += main1
            l = "sw $t0, {}($sp)\n".format(i)
        main += l

        return main

    @visitor.when(PlusCIL)
    def visit(self, node):
        variable0 = self.visit(node.left)
        variable1 = self.visit(node.right)
        i = self.search_offset(variable0)
        j = self.search_offset(variable1)

        main = "lw $t2, {}($sp)\nlw $t3, {}($sp)\nadd $t0, $t2, $t3\n".format(i, j)

        return main

    @visitor.when(MinusCIL)
    def visit(self, node):
        variable0 = self.visit(node.left)
        variable1 = self.visit(node.right)
        i = self.search_offset(variable0)
        j = self.search_offset(variable1)

        main = "lw $t2, {}($sp)\nlw $t3, {}($sp)\nsub $t0, $t2, $t3\n".format(i, j)

        return main

    @visitor.when(StarCIL)
    def visit(self, node):
        variable0 = self.visit(node.left)
        variable1 = self.visit(node.right)
        i = self.search_offset(variable0)
        j = self.search_offset(variable1)

        main = "lw $t2, {}($sp)\nlw $t3, {}($sp)\nmult $t2, $t3\nmflo $t0\n".format(i, j)

        return main

    @visitor.when(DivCIL)
    def visit(self, node):
        variable0 = self.visit(node.left)
        variable1 = self.visit(node.right)
        i = self.search_offset(variable0)
        j = self.search_offset(variable1)

        main = "lw $t2, {}($sp)\nlw $t3, {}($sp)\ndiv $t2, $t3\nmflo $t0\n".format(i, j)

        return main

    @visitor.when(IntegerCIL)
    def visit(self, node):
        main = "li $t0, {}\n".format(node.value)
        return main

    @visitor.when(EqualsCIL)
    def visit(self, node):
        variable0 = self.visit(node.left)
        variable1 = self.visit(node.right)
        i = self.search_offset(variable0)
        j = self.search_offset(variable1)

        self.counter += 1
        main = "lw $t2, {}($sp)\nlw $t3, {}($sp)\nbeq $t2, $t3, _equals{}\nli $t0,0\nj _not_equals{}\n_equals{}:\nli $t0,1\n_not_equals{}:\n".format(i, j,self.counter,self.counter,self.counter,self.counter)

        return main

    @visitor.when(EqualsStringCIL)
    def visit(self, node):
        variable0 = self.visit(node.left)
        variable1 = self.visit(node.right)
        i = self.search_offset(variable0)
        j = self.search_offset(variable1)

        main = "lw $s2, {}($sp)\nlw $s3, {}($sp)\njal cmploop\nmove $t0, $a0\n".format(i, j)
        return main

    @visitor.when(LessThanCIL)
    def visit(self, node):
        variable0 = self.visit(node.left)
        variable1 = self.visit(node.right)
        i = self.search_offset(variable0)
        j = self.search_offset(variable1)

        main = "lw $t2, {}($sp)\nlw $t3, {}($sp)\nblt $t2, $t3,less_than_{}\nli $t0, 0\nj not_less_{}\nless_than_{}:\nli $t0, 1\nnot_less_{}:\n".format(i, j,self.counter,self.counter,self.counter,self.counter)

        self.counter += 1
        return main

    @visitor.when(LessThanEqualsCIL)
    def visit(self, node):
        variable0 = self.visit(node.left)
        variable1 = self.visit(node.right)
        i = self.search_offset(variable0)
        j = self.search_offset(variable1)

        main = "lw $t2, {}($sp)\nlw $t3, {}($sp)\nble $t2, $t3, less_equals_than_{}\nli $t0, 0\nj not_less_equals_{}\nless_equals_than_{}:\nli $t0, 1\nnot_less_equals_{}:\n".format(i, j,self.counter,self.counter,self.counter,self.counter)

        self.counter += 1
        return main

    @visitor.when(CaseCIL)
    def visit(self, node):
        variable0 = self.visit(node.local_typeof)
        i = self.search_offset(variable0)
        new_list = ["data_"+name for name in node.types_list]
        self.case_data += "case{}: .word {}\n".format(self.counter,",".join(new_list))
        self.case_data += "label_list{}: .word {}\n".format(self.counter, ",".join(node.label_list))

        case_mips = "move $s7, $ra\nmove $s3, $a3\nmove $t3, $a1\nmove $t5, $a0\nmove $t6, $a1\nmove $t7, $a2\nmove $t8, $a3\nli $s1, 1000\njal find\nmove $s6, $t2\nli $t0, 4\nmult	$t0, $t2\nmflo	$t1\nadd $t1, $t1, $a1\ncase_loop{}:\nmove $s3, $t1\nlw $s3, 0($s3)\nmove $t3, $t5\nli $s1, {}\njal find\nli $t0, 4\nbne $t2, $s1, end_case{}\nmult	$t0, $s6\nmflo	$t1\nadd $t1, $t1, $a2\nlw $s6, 0($t1)\nli $t1, 4\nmult	$t0, $t1\nmflo	$t1\nmove $a1, $t6\nadd $t1, $a1, $t1\nmove $t3, $a0\nmove $t2, $s6\nmult	$t0, $s6\nmflo	$t1	\nadd $t1, $t1, $a1\nj case_loop{}\nend_case{}:".format(self.counter,len(new_list), self.counter,self.counter,self.counter)
        main = "la $a0, case{}\nla $a1, types_hierarchy\nla $a2, parent_indexes\nlw $a3, {}($sp)\n{}\nli $t1, 4\nmult $t2, $t1\nmflo $t2\nla $a2, label_list{}\nadd $t1, $a2, $t2\nlw $t2, ($t1)\nj $t2\n".format(self.counter,i,case_mips,self.counter)
        self.counter += 1
        return main

    @visitor.when(IfGotoCIL)
    def visit(self, node):
        variable0 = self.visit(node.variable)
        i = self.search_offset(variable0)

        main = "lw $t1, {}($sp)\nbeq $t1, $zero, {}\n".format(i, node.label)
        return main 
    
    @visitor.when(GotoCIL)
    def visit(self, node):
        return "j {}\n".format(node.label)

    @visitor.when(LabelCIL)
    def visit(self, node):
        return "{}:\n".format(node.label)

    @visitor.when(PrintIntegerCIL)
    def visit(self, node):
        variable0 = self.visit(node.variable)
        i = self.search_offset(variable0)
        main = "lw $a0, {}($sp)\nli $v0, 1\nsyscall\n".format(i)

        return main

    @visitor.when(PrintStringCIL)
    def visit(self, node):
        variable0 = self.visit(node.variable)
        i = self.search_offset(variable0)

        main = "lw $a0, {}($sp)\nli $v0, 4\nsyscall\n".format(i)

        return main

    @visitor.when(ReadIntegerCIL)
    def visit(self, node):
        main = "li $v0, 5\nsyscall\nmove $t0, $v0\n"

        return main

    @visitor.when(ReadStringCIL)
    def visit(self, node):
        main = "li $v0, 8\nla $a0, temp_string\nli $a1, 1024\nsyscall\nla $a0, temp_string\njal save_string_2\nmove $t0, $a1\n"

        return main

    @visitor.when(AbortCIL)
    def visit(self, node):
        return "li $v0, 10\nsyscall\n"

    @visitor.when(ParamCIL)
    def visit(self, node):
        variable0 = self.visit(node.param)
        i = self.search_offset(variable0)

        main = "lw $t1, {}($sp)\naddi $sp, $sp, -4\nsw $t1, 0($sp)\n".format(i+node.shift*4)
        return main
    
    @visitor.when(ArgCIL)
    def visit(self, node, pos):
        variable0 = self.visit(node.arg)
        i = self.search_offset(variable0)
        # data = "{}: .word 0\n".format(variable0)
        main = "lw $t1, {}($sp)\nsw $t1, {}($sp)\n".format(pos*4, i)
        return main

    @visitor.when(DataCIL)
    def visit(self, node):
        data = ""
        code_to_main = ""
        for msg in node.msg_list:
            name, string = self.visit(msg)
            data += "{}: .word 0\n{}: .asciiz \"{}\"\n".format(name+"_ad", name, string)
            code_to_main += "la $a0, {}\njal save_string\nsw $a1, {}\n".format(name, name+"_ad")
        return data, code_to_main
    
    @visitor.when(MessageCIL)
    def visit(self, node):
        return node.name, node.string

    @visitor.when(LoadCIL)
    def visit(self, node):
        name, _ = self.visit(node.msg)
        main = "lw $t0, {}\n".format(name+"_ad")
        return main

    @visitor.when(CallCIL)
    def visit(self, node):
        return "jal {}\n".format(node.function)

    @visitor.when(VCallCIL)
    def visit(self, node):
        if type(node.type) == LocalCIL:
            variable0 = self.visit(node.type)
            i = self.search_offset(variable0)
            c_param = node.c_param
            main = "lw $t1, {}($sp)\naddi $t3, $t1, 4\nlw $t3, ($t3)\nla $s3, {}_\nli $s1, 1000\njal find\naddi $t0, $t2, 3\nlw $t1, {}($sp)\nli $a0,4\nmult $t0, $a0\nmflo $t0\nadd $t1, $t1, $t0\nlw $t2, ($t1)\njal $t2\n".format(i + (c_param*4), node.function, i + (c_param*4))
        else:
            main = "la $t3, {}_method\nla $s3, {}_\nli $s1, 1000\njal find\naddi $t0, $t2, 3\nla $t1, {}\nli $a0,4\nmult $t0, $a0\nmflo $t0\nadd $t1, $t1, $t0\nlw $t2, ($t1)\njal $t2\n".format(node.type, node.function, node.type)
        return main
        # return "jal {}_{}\n".format(node.type, node.function)

    @visitor.when(AllocateCIL)
    def visit(self, node):
        main = "lw $a0, {}\nli $v0, 9\nsyscall\nla $t1, {}\nmove $t0, $v0\nsw $t1, ($t0)\n".format(node.type, node.type)
        return main

    @visitor.when(TypeofCIL)
    def visit(self, node):
        variable0 = self.visit(node.variable)
        i = self.search_offset(variable0)

        main = "lw $t1, {}($sp)\nlw $t0, ($t1)\n".format(i)
        return main

    @visitor.when(TypeNameCIL)
    def visit(self, node):
        variable0 = self.visit(node.variable)
        i = self.search_offset(variable0)

        main = "lw $t1, {}($sp)\naddi $t0, $t1, 8\nlw $t0, ($t0)\n".format(i)
        return main


    @visitor.when(GetAttrCIL)
    def visit(self, node):
        variable0 = self.visit(node.instance)
        i = self.search_offset(variable0)
        
        main = "lw $t1, {}($sp)\naddi $t1, $t1, {}\nlw $t0, ($t1)\n".format(i, (node.attr+1)*4)
        return main

    @visitor.when(SetAttrCIL)
    def visit(self, node):
        variable0 = self.visit(node.instance)
        variable1 = self.visit(node.value)
        i = self.search_offset(variable0)
        j = self.search_offset(variable1)

        main = "lw $t2, {}($sp)\nlw $t1, {}($sp)\naddi $t1, $t1, {}\nsw $t2, ($t1)\n".format(j, i, (node.attr+1)*4)
        return main

    @visitor.when(IsvoidCIL)
    def visit(self, node):
        variable0 = self.visit(node.local)
        i = self.search_offset(variable0)

        main = "lw $t1, {}($sp)\nlw $t2, isvoid($zero)\nbeq $t1, $t2, void_equals{}\nli $t0, 0\nj void_end{}\nvoid_equals{}:\nli $t0, 1\nvoid_end{}:".format(i, self.counter, self.counter, self.counter, self.counter)
        self.counter += 1
        return main

    @visitor.when(LengthCIL)
    def visit(self, node):
        variable0 = self.visit(node.variable)
        i = self.search_offset(variable0)

        main = "lw $a0, {}($sp)\nlw $a0, 4($a0)\njal lenght\nmove $t0, $a1\n".format(i)
        return main

    @visitor.when(ConcatCIL)
    def visit(self, node):
        variable0 = self.visit(node.string1)
        variable1 = self.visit(node.string2)
        i = self.search_offset(variable0)
        j = self.search_offset(variable1)

        main = "lw $a0, {}($sp)\nlw $a1, {}($sp)\nlw $a0, 4($a0)\njal concat_string\nmove $t0, $a1\n".format(i, j)
        return main

    @visitor.when(SubStrCIL)
    def visit(self, node):
        variable0 = self.visit(node.i)
        variable1 = self.visit(node.j)
        variable2 = self.visit(node.string)
        i = self.search_offset(variable0)
        j = self.search_offset(variable1)
        k = self.search_offset(variable2)

        main = "lw $a0, {}($sp)\nlw $a1, {}($sp)\nlw $a2, {}($sp)\nlw $a2, 4($a2)\njal sub_string\nmove $t0, $a1\n".format(i,j,k)
        return main

    @visitor.when(CopyCIL)
    def visit(self, node):
        variable0 = self.visit(node.instance)
        i = self.search_offset(variable0)

        main = "lw $a0, {}($sp)\njal copy\nmove $t0, $a1\n".format(i)
        return main