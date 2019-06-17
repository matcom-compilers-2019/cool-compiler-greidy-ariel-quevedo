from cool.AST.ast_cil import *
import cool.Visitors.visitor as visitor

class CILPainter(object):
    
    @visitor.on('node')
    def visit(self, node):
        pass

    @visitor.when(ProgramCIL)
    def visit(self, node, tabs):
        s = "Types:\n"
        for t in node.type_list:
            s += (tabs + 1)*'\t' + self.visit(t,(tabs + 1))
        s += "Data:\n"
        for d in node.data_list:
            s += (tabs)*'\t' + self.visit(d,(tabs + 1))
        s += "Code:\n"
        s += self.visit(node.code, (tabs + 1))
        return s

    @visitor.when(TypeCIL)
    def visit(self, node, tabs):
        s = node.name + "{\n"
        for att in node.attr_list:
            s += (tabs + 1)*'\t' + "attribute " + self.visit(att, (tabs + 1))
        
        for meth in node.method_list:
            old_name, new_name = self.visit(meth, (tabs + 1))
            s += (tabs + 1)*'\t' + "method " + old_name + ":" + new_name
        s += (tabs)*'\t'+"}\n"
        return s

    @visitor.when(AttributeCIL)
    def visit(self, node, tabs):
        return node.name + "\n"

    @visitor.when(MethodCIL)
    def visit(self, node, tabs):
        return (node.old_name, node.name + "\n")

    @visitor.when(DataCIL)
    def visit(self, node, tabs):
        s = ""
        for msg in node.msg_list:
            name, string = self.visit(msg, (tabs + 1))
            s += (tabs)*'\t' + name + "=" + "\"{}\"".format(string) + "\n"
        return s

    @visitor.when(MessageCIL)
    def visit(self, node, tabs):
        return (node.name, node.string)

    @visitor.when(CodeCIL)
    def visit(self, node, tabs):
        s = ""
        for f in node.function_list:
            s +=(tabs)*'\t' +  self.visit(f, tabs)
        return s

    @visitor.when(FunctionCIL)
    def visit(self, node, tabs):
        s = node.name + "{\n"
        for _arg in node.arg_list[::-1]:
            s += (tabs + 1)*'\t' + self.visit(_arg, (tabs + 1))
        for _local in node.locals_list:
            s += (tabs + 1)*'\t' + "Local "+ self.visit(_local, (tabs + 1)) + "\n"
        for _code in node.expr_list:
            s += (tabs + 1)*'\t' + self.visit(_code, (tabs + 1)) 
        s += (tabs)*'\t'+"}\n"
        return s

    @visitor.when(AssignCIL)
    def visit(self, node, tabs):
        return self.visit(node.local,tabs) + " = " + self.visit(node.right_expr,tabs) + "\n"

    @visitor.when(CILRead)
    def visit(self, node, tabs):
        return "Read"

    @visitor.when(LengthCIL)
    def visit(self, node, tabs):
        return "Length " + self.visit(node.variable, tabs)

    @visitor.when(ConcatCIL)
    def visit(self, node, tabs):
        return "Concat " + self.visit(node.string1, tabs) + " " + self.visit(node.string2, tabs)

    @visitor.when(SubStrCIL)
    def visit(self, node, tabs):
        return "Substring " + self.visit(node.i, tabs) + " " + self.visit(node.j, tabs) + " " + self.visit(node.string, tabs)

    @visitor.when(STRCIL)
    def visit(self, node, tabs):
        return "STR " + self.visit(node.string, tabs)    

    @visitor.when(PlusCIL)
    def visit(self, node, tabs):
        return self.visit(node.left, tabs) + " + " + self.visit(node.right, tabs)

    @visitor.when(MinusCIL)
    def visit(self, node, tabs):
        return self.visit(node.left, tabs) + " - " + self.visit(node.right, tabs)

    @visitor.when(StarCIL)
    def visit(self, node, tabs):
        return self.visit(node.left, tabs) + " * " + self.visit(node.right, tabs)

    @visitor.when(DivCIL)
    def visit(self, node, tabs):
        return self.visit(node.left, tabs) + " / " + self.visit(node.right, tabs)

    @visitor.when(ParamCIL)
    def visit(self, node, tabs):
        return "Param " + self.visit(node.param, tabs) + " " + str(node.shift) + "\n"
        
    @visitor.when(ArgCIL)
    def visit(self, node, tabs):
        return "Arg " + self.visit(node.arg, tabs) + "\n"

    @visitor.when(AbortCIL)
    def visit(self, node, tabs):
        return "halt\n"

    @visitor.when(CILPrint)
    def visit(self, node, tabs):
        return "Print " + self.visit(node.variable,tabs) + "\n"

    @visitor.when(AllocateCIL)
    def visit(self, node, tabs):
        return "Allocate " + node.type

    @visitor.when(TypeofCIL)
    def visit(self, node, tabs):
        return "Typeof " + self.visit(node.variable,tabs)

    @visitor.when(TypeNameCIL)
    def visit(self, node, tabs):
        return "Type_Name " + self.visit(node.variable,tabs)

    @visitor.when(CallCIL)
    def visit(self, node, tabs):
        return "Call " + node.function

    @visitor.when(VCallCIL)
    def visit(self, node, tabs):
        if type(node.type) == str:
            return "VCall " + node.type + " " + node.function
        return "VCall " + self.visit(node.type, tabs) + " " + node.function

    @visitor.when(CaseCIL)
    def visit(self, node, tabs):
        return "Case "+ self.visit(node.local_typeof, tabs) + " " + ",".join(node.types_list) + " " + ",".join(node.label_list) +"\n"

    @visitor.when(IfGotoCIL)
    def visit(self, node, tabs):
        return "If " + self.visit(node.variable, tabs) + " Goto " + node.label + "\n"

    @visitor.when(GotoCIL)
    def visit(self, node, tabs):
        return "Goto " + node.label + "\n"

    @visitor.when(LabelCIL)
    def visit(self, node, tabs):
        return node.label + ":\n"

    @visitor.when(ReturnCIL)
    def visit(self, node, tabs):
        return "Return " + self.visit(node.variable, tabs) + "\n"

    @visitor.when(LoadCIL)
    def visit(self, node, tabs):
        name, msg = self.visit(node.msg,tabs)
        return "Load " + name + " -> " + msg

    @visitor.when(LocalCIL)
    def visit(self, node, tabs):
        return node.name  # +"(" + str(node.value) + ")"

    @visitor.when(IntegerCIL)
    def visit(self, node, tabs):
        return str(node.value)

    @visitor.when(IsvoidCIL)
    def visit(self, node, tabs):
        return "IsVoid " + self.visit(node.local, tabs)

    @visitor.when(EqualsCIL)
    def visit(self, node, tabs):
        return self.visit(node.left, tabs) + " == " + self.visit(node.right, tabs)

    @visitor.when(EqualsStringCIL)
    def visit(self, node, tabs):
        return self.visit(node.left, tabs) + " =String= " + self.visit(node.right, tabs)

    @visitor.when(LessThanCIL)
    def visit(self, node, tabs):
        return self.visit(node.left, tabs) + " < " + self.visit(node.right, tabs)

    @visitor.when(LessThanEqualsCIL)
    def visit(self, node, tabs):
        return self.visit(node.left, tabs) + " <= " + self.visit(node.right, tabs)

    @visitor.when(GetAttrCIL)
    def visit(self, node, tabs):
        return "GetAttr " + self.visit(node.instance, tabs) + " " + str(node.attr)

    @visitor.when(SetAttrCIL)
    def visit(self, node, tabs):
        return "SetAttr " + self.visit(node.instance, tabs) + " " + str(node.attr) + " " + self.visit(node.value, tabs) + "\n"

    @visitor.when(CopyCIL)
    def visit(self, node, tabs):
        return "Copy " + self.visit(node.instance, tabs)