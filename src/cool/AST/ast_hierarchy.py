# ===============================================================
# =======================AST=HIERARCHY===========================
# ===============================================================

ERROR = 0
INTEGER = 1

class Node:
    def __init__(self):
        self.static_type = ""

class ProgramNode(Node):
    def __init__(self, class_list):
        Node.__init__(self)
        self.class_list = class_list
        #self.expr = expr
class ClassNode(Node):
    def __init__(self,name,parent,feature_list):
        Node.__init__(self)
        self.name = name
        self.parent = parent
        self.feature_list = feature_list
class FeatureNode(Node):
    pass


class Atribute_Definition(FeatureNode):
    def __init__(self,att_id,att_type,exp):
        Node.__init__(self)
        self.att_id = att_id
        self.att_type = att_type
        self.expr = exp

class Method_Definition(FeatureNode):
    def __init__(self,meth_id,param_list, return_type, exp):
        Node.__init__(self)
        self.meth_id = meth_id
        self.param_list = param_list
        self.return_type = return_type
        self.exp = exp

class ParamNode(Node):
    def __init__(self,par_id,par_type):
        Node.__init__(self)
        self.par_id = par_id
        self.par_type = par_type


class ExpressionNode(Node):
    pass

class DotNode(Node):
    def __init__(self,expression,method_id,exp,exp_type):
        Node.__init__(self)
        self.expression = expression
        self.method_id = method_id
        self.exp_type = exp_type
        self.exp = exp
class MethodCallNode(Node):
    def __init__(self,method_id,exp):
        Node.__init__(self)
        self.method_id = method_id
        self.exp = exp
class IfNode(Node):
    def __init__(self,condition,true_exp,false_exp):
        Node.__init__(self)
        self.condition = condition
        self.true_exp = true_exp
        self.false_exp = false_exp
class WhileNode(Node):
    def __init__(self,condition,exp):
        Node.__init__(self)
        self.condition = condition
        self.exp  = exp
class CaseNode(Node):
    def __init__(self, cases_list, exp):
        Node.__init__(self)
        self.exp = exp
        self.cases_list = cases_list # Case[]
class Case(Node):
    def __init__(self,var_id,exp_type,exp):
        Node.__init__(self)
        self.exp = exp
        self.exp_type = exp_type
        self.var_id = var_id
class NewNode(Node):
    def __init__(self,n_type):
        Node.__init__(self)
        self.type = n_type

class UtilNode(Node):
    pass

class BinaryOperatorNode(ExpressionNode):
    def __init__(self, left, right):
        Node.__init__(self)
        self.left = left
        self.right = right

class UnaryOperator(ExpressionNode):
    def __init__(self, expr):
        Node.__init__(self)
        self.expr = expr

class CompareNode(ExpressionNode):
    def __init__(self, left, right):
        Node.__init__(self)
        self.left = left
        self.right = right

class AtomicNode(ExpressionNode):
    pass

class IsVoidNode(UnaryOperator):
    pass

class PlusNode(BinaryOperatorNode):
    pass

class MinusNode(BinaryOperatorNode):
    pass

class StarNode(BinaryOperatorNode):
    pass

class DivNode(BinaryOperatorNode):
    pass

class NegationNode(UnaryOperator):
    pass

class IntComplement(UnaryOperator):
    pass

class LessThan(CompareNode):
    pass

class LessThanEquals(CompareNode):
    pass

class Equals(CompareNode):
    pass

class LetInNode(AtomicNode):
    def __init__(self, declaration_list, expr):
        Node.__init__(self)
        self.declaration_list = declaration_list
        self.expr = expr

class BlockNode(AtomicNode):
    def __init__(self, expr_list):
        Node.__init__(self)
        self.expr_list = expr_list

class ParentesisNode(AtomicNode):
    def __init__(self, expr):
        Node.__init__(self)
        self.expr = expr

class AssignNode(AtomicNode):
    def __init__(self, idx_token, expr):
        Node.__init__(self)
        self.idx_token = idx_token
        self.expr = expr
        self.variable_info = None

class IntegerNode(AtomicNode):
    def __init__(self, integer_token):
        Node.__init__(self)
        self.integer_token = integer_token

class StringNode(AtomicNode):
    def __init__(self, string):
        Node.__init__(self)
        self.string = string

class BoolNode(AtomicNode):
    def __init__(self, boolean):
        Node.__init__(self)
        self.boolean = boolean

class VariableNode(AtomicNode):
    def __init__(self, idx_token):
        Node.__init__(self)
        self.idx_token = idx_token
        self.variable_info = None

class DeclarationNode(UtilNode):
    def __init__(self, idx_token, id_type, expr=None):
        Node.__init__(self)
        self.idx_token = idx_token
        self.id_type = id_type
        self.expr = expr
        self.variable_info = None
