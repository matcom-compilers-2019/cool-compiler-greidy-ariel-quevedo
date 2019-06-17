class CILNode(object):
    pass

class ProgramCIL(CILNode):
    def __init__(self, type_list, data_list, code):
        self.type_list = type_list
        self.data_list = data_list
        self.code = code

class TypeCIL(CILNode):
    def __init__(self, name, attr_list, method_list):
        self.name = name
        self.attr_list = attr_list
        self.method_list = method_list

class AttributeCIL(CILNode):
    def __init__(self, name, value):
        self.name = name

class MethodCIL(CILNode):
    def __init__(self, old_name, name, function):
        self.old_name = old_name
        self.name = name
        self.function = function

class DataCIL(CILNode):
    def __init__(self, msg_list):
        self.msg_list = msg_list

class MessageCIL(CILNode):
    def __init__(self, name, string):
        self.name = name
        self.string = string

class CodeCIL(CILNode):
    def __init__(self, function_list):
        self.function_list = function_list

class FunctionCIL(CILNode):
    def __init__(self,name, arg_list, locals_list, expr_list):
        self.name = name
        self.arg_list = arg_list
        self.locals_list = locals_list
        self.expr_list = expr_list

class CILExpression(CILNode):
    pass

class AssignCIL(CILExpression):
    def __init__(self, local, right_expr):
        self.local = local
        self.right_expr = right_expr

class CILBinaryOperator(CILExpression):
    def __init__(self, left, right):
        self.left = left
        self.right = right

class PlusCIL(CILBinaryOperator):
    pass

class MinusCIL(CILBinaryOperator):
    pass

class StarCIL(CILBinaryOperator):
    pass

class DivCIL(CILBinaryOperator):
    pass

class GetAttrCIL(CILExpression):
    def __init__(self, instance, attr):
        self.instance = instance
        self.attr = attr

class SetAttrCIL(CILExpression):
    def __init__(self, instance, attr, value):
        self.instance = instance
        self.attr = attr
        self.value = value

class AllocateCIL(CILExpression):
    def __init__(self, _type):
        self.type = _type

class TypeofCIL(CILExpression):
    def __init__(self, variable):
        self.variable = variable

class TypeNameCIL(CILExpression):
    def __init__(self, variable):
        self.variable = variable

class CallCIL(CILExpression):
    def __init__(self, function):
        self.function = function

class VCallCIL(CILExpression):
    def __init__(self, _type, function, c_param):
        self.type = _type
        self.function = function
        self.c_param = c_param

class ParamCIL(CILExpression):
    def __init__(self, param, shift = 0):
        self.param = param
        self.shift = shift

class ArgCIL(CILExpression):
    def __init__(self, arg):
        self.arg = arg

class CaseCIL(CILExpression):
    def __init__(self, local_typeof, types_list, label_list):
        self.local_typeof = local_typeof
        self.types_list = types_list
        self.label_list = label_list

class IfGotoCIL(CILExpression):
    def __init__(self, variable, label):
        self.variable = variable
        self.label = label

class GotoCIL(CILExpression):
    def __init__(self, label):
        self.label = label

class LabelCIL(CILExpression):
    def __init__(self, label):
        self.label = label

class LocalCIL(CILExpression):
    def __init__(self, name, value = 0):
        self.name = name
        self.value = value

class ReturnCIL(CILExpression):
    def __init__(self, variable = LocalCIL("default")):
        self.variable = variable

class LoadCIL(CILExpression):
    def __init__(self, msg):
        self.msg = msg

class LengthCIL(CILExpression):
    def __init__(self, variable):
        self.variable = variable

class ConcatCIL(CILExpression):
    def __init__(self,local1,local2):
        self.string1 = local1
        self.string2 = local2

class SubStrCIL(CILExpression):
    def __init__(self,i,j,string):
        self.i = i
        self.j = j
        self.string = string

class STRCIL(CILExpression):
    def __init__(self, string):
        self.string = string

class StringCIL(CILExpression):
    def __init__(self, variable):
        self.variable = variable

class CILRead(CILExpression):
    pass

class ReadStringCIL(CILRead):
    pass

class ReadIntegerCIL(CILRead):
    pass

class CILPrint(CILExpression):
    def __init__(self, variable):
        self.variable = variable

class PrintStringCIL(CILPrint):
    pass

class PrintIntegerCIL(CILPrint):
    pass

class IntegerCIL(CILExpression):
    def __init__(self, value):
        self.value = value

class CILCompare(CILExpression):
    def __init__(self, left, right):
        self.left = left
        self.right = right

class IsvoidCIL(CILExpression):
    def __init__(self, local):
        self.local = local

class EqualsCIL(CILCompare):
    pass

class EqualsStringCIL(CILCompare):
    pass
    
class LessThanCIL(CILCompare):
    pass
    
class LessThanEqualsCIL(CILCompare):
    pass

class AbortCIL(CILNode):
    pass

class CopyCIL(CILNode):
    def __init__(self, instance):
        self.instance = instance