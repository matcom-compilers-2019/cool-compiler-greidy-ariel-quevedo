from cool.AST.ast_hierarchy import *
import cool.Context.context2 as enviroment
import cool.Visitors.visitor as visitor

class CheckTypes(object):

    def __init__(self, context):
        self.context = context
        self.__main = False

    @visitor.on('node')
    def visit(self, node, scope, current_class):
        pass

    @visitor.when(ProgramNode)
    def visit(self, node, scope, current_class):
        for _class in node.class_list:
            if not self.visit(node.class_list[_class], enviroment.Scope(_class), _class):
                return False
        if not self.__main:
            raise Exception("AttributeError: class Main has not method main()")
        return True

    @visitor.when(ClassNode)
    def visit(self, node, scope, current_class):
        classes = ["String", "Int", "Bool"]
        if node.parent in classes:
            return False
        scope.new_scope(self.context.get_O_by_class(current_class))
        for feature in node.feature_list:
            if not self.visit(feature, scope, node.name):
                return False
        scope.end_scope()
        return True

    @visitor.when(Atribute_Definition)
    def visit(self, node, scope, current_class):
        if node.expr != None:
            expr_type = self.visit(node.expr, scope, current_class)
            conform = self.context.lca.conform(expr_type, node.att_type)
            return conform
        return True

    @visitor.when(Method_Definition)
    def visit(self, node, scope, current_class):
        if node.meth_id == "main" and current_class == "Main":
            self.__main = True
        O = enviroment.ObjectEnviroment(current_class)
        for param in node.param_list:
            a,b = self.visit(param, scope, current_class)
            O.add(a,b)
        scope.new_scope(O)
        expr_type = self.visit(node.exp, scope, current_class)
        scope.end_scope()
        conform = self.context.lca.conform(expr_type, node.return_type)
        return conform

    @visitor.when(ParamNode)
    def visit(self, node, scope, current_class):
        return (node.par_id, node.par_type)

    @visitor.when(BinaryOperatorNode)
    def visit(self, node, scope, current_class):
        type_left = self.visit(node.left, scope, current_class)
        type_right = self.visit(node.right, scope, current_class)
        if type_left == type_right and type_left == "Int":
            node.static_type = "Int"
            return "Int"

        raise Exception("SemanticError: Binary operator error between '{}' and '{}'".format(type_left, type_right))

    @visitor.when(Equals)
    def visit(self, node, scope, current_class):
        type_left = self.visit(node.left, scope, current_class)
        type_right = self.visit(node.right, scope, current_class)
        if type_right in ["String", "Bool", "Int"] and type_left in ["String", "Bool", "Int"]:
            if type_right == type_left:
                node.static_type = "Bool"
                return "Bool"
            else:
                raise Exception("SemanticError: Equals between '{}' and '{}'".format(type_left, type_right))
        if type_right != "ERROR" and type_left != "ERROR":
            node.static_type = "Bool"
            return "Bool"
        raise Exception("SemanticError: Error")

    @visitor.when(LessThan)
    def visit(self, node, scope, current_class):
        type_left = self.visit(node.left, scope, current_class)
        type_right = self.visit(node.right, scope, current_class)
        if type_left == type_right and type_left == "Int":
            node.static_type = "Bool"
            return "Bool"
        raise Exception("SemanticError: Less Than between '{}' and '{}'".format(type_left, type_right))

    @visitor.when(LessThanEquals)
    def visit(self, node, scope, current_class):
        type_left = self.visit(node.left, scope, current_class)
        type_right = self.visit(node.right, scope, current_class)
        if type_left == type_right and type_left == "Int":
            node.static_type = "Bool"
            return "Bool"
        raise Exception("SemanticError: Less Than Equals between '{}' and '{}'".format(type_left, type_right))

    @visitor.when(NegationNode)
    def visit(self, node, scope, current_class):
        type_expr = self.visit(node.expr, scope, current_class)
        if type_expr == "Bool":
            node.static_type = "Bool"
            return "Bool"
        raise Exception("SemanticError: Negate '{}'".format(type_expr))

    @visitor.when(IntComplement)
    def visit(self, node, scope, current_class):
        type_expr = self.visit(node.expr, scope, current_class)
        if type_expr == "Int":
            node.static_type = "Int"
            return "Int"
        raise Exception("SemanticError: Int Complement to '{}'".format(type_expr))

    @visitor.when(IsVoidNode)
    def visit(self, node, scope, current_class):
        type_expr = self.visit(node.expr, scope, current_class)
        if self.context.lca.find(type_expr):
            node.static_type = "Bool"
            return "Bool"
        raise Exception("SemanticError: Isvoid, '{}' doesn't exits".format(type_expr))

    @visitor.when(WhileNode)
    def visit(self, node, scope, current_class):
        type_condition = self.visit(node.condition, scope, current_class)
        type_exp = self.visit(node.exp, scope, current_class)
        if type_condition == "Bool" and self.context.lca.find(type_exp):
            node.static_type = "Object"
            return "Object"
        raise Exception("SemanticError: While, condition has to be Bool ('{}')".format(type_condition))

    @visitor.when(BlockNode)
    def visit(self, node, scope, current_class):
        last_type = ""
        for expr in node.expr_list:
            last_type = self.visit(expr, scope, current_class)
        node.static_type = last_type
        return last_type

    @visitor.when(ParentesisNode)
    def visit(self, node, scope, current_class):
        node.static_type = self.visit(node.expr, scope, current_class)
        return node.static_type

    @visitor.when(IfNode)
    def visit(self, node, scope, current_class):
        type_condition = self.visit(node.condition, scope, current_class)
        type_true = self.visit(node.true_exp, scope, current_class)
        type_false = self.visit(node.false_exp, scope, current_class)
        if type_condition == "Bool":
            lca = self.context.lca.get_lca(type_true, type_false)
            node.static_type = lca
            return lca
        raise Exception("SemanticError: If type condition is not Bool ('{}')".format(type_condition))

    @visitor.when(NewNode)
    def visit(self, node, scope, current_class):
        if self.context.is_defined_type(node.type):
            node.static_type = node.type
            return node.type
        else:
            raise Exception("SemanticError: '{}' is not defined".format(node.type))

    @visitor.when(IntegerNode)
    def visit(self, node, scope, current_class):
        node.static_type = "Int"
        return "Int"

    @visitor.when(StringNode)
    def visit(self, node, scope, current_class):
        node.static_type = "String"
        return "String"

    @visitor.when(BoolNode)
    def visit(self, node, scope, current_class):
        node.static_type = "Bool"
        return "Bool"

    @visitor.when(VariableNode)
    def visit(self, node, scope, current_class):
        boolean, xtype = scope.is_defined(node.idx_token)
        if boolean:
            node.static_type = xtype
            return xtype
        else:
            raise Exception("NameError: '{}' undefined".format(node.idx_token))

    @visitor.when(AssignNode)
    def visit(self, node, scope, current_class):
        boolean, xtype = scope.is_defined(node.idx_token)
        if boolean:
            type_id = xtype 
        else:
            raise Exception("NameError: '{}' undefined".format(node.idx_token))
        type_expr = self.visit(node.expr, scope, current_class)
        conform = self.context.lca.conform(type_expr, type_id)
        if conform:
            node.static_type = type_expr
            return type_expr
        raise Exception("TypeError: Can't assign '{}' <- '{}'".format(type_id, type_expr))

    @visitor.when(MethodCallNode)
    def visit(self, node, scope, current_class):
        if self.context.is_defined_method(current_class, node.method_id)[0]:
            par_id_type = self.context.get_method_params(current_class, node.method_id)
            r_type = self.context.get_return_param(current_class, node.method_id)
            if len(par_id_type) != len(node.exp):
                raise Exception("SemanticError: Params list has diferent length")
            for i,exp in enumerate(node.exp):
                expr_type = self.visit(exp, scope, current_class)
                conform = self.context.lca.conform(expr_type, par_id_type[i][1])
                if not conform:
                    raise Exception("TypeError: Can't save '{}' in '{}'".format(expr_type, par_id_type[i][1]))
            node.static_type = r_type[0]
            return r_type[0]
        else:
            raise Exception("AttributeError: '{}' undefined in {}".format(node.meth_id, current_class))

    @visitor.when(LetInNode)
    def visit(self, node, scope, current_class):
        O = enviroment.ObjectEnviroment(current_class)
        scope.new_scope(O)
        for declaration in node.declaration_list:
            self.visit(declaration, scope, current_class)
        r_type_expr = self.visit(node.expr, scope, current_class)
        scope.end_scope()
        node.static_type = r_type_expr
        return r_type_expr

    @visitor.when(DeclarationNode)
    def visit(self, node, scope, current_class):
        if node.expr != None:       
            r_type = self.visit(node.expr, scope, current_class)
            conform = self.context.lca.conform(r_type, node.id_type)
            if conform:
                scope.add(node.idx_token, node.id_type)
                # if not scope.is_defined(node.idx_token)[0]:
                # else:
                #     # ERROR
                #     pass
            else:
                raise Exception("TypeError: Let, Can't assign '{}' <- '{}'".format(node.id_type, r_type))
        else:
            scope.add(node.idx_token, node.id_type)
            # if not scope.is_defined(node.idx_token)[0]:
            # else:
            #     # ERROR
            #     pass

    @visitor.when(CaseNode)
    def visit(self, node, scope, current_class):
        r_type = self.visit(node.exp, scope, current_class)
        if r_type == "ERROR":
            return "ERROR"
        last_type = "SELF_TYPE"
        for case in node.cases_list:
            case_type = self.visit(case, scope, current_class)
            last_type = self.context.lca.get_lca(case_type, last_type)
        node.static_type = last_type
        return last_type

    @visitor.when(Case)
    def visit(self, node, scope, current_class):
        O = enviroment.ObjectEnviroment(current_class)
        scope.new_scope(O)
        if not scope.is_defined(node.var_id)[0]:
            scope.add(node.var_id, node.exp_type)
        else:
            # ERROR
            pass
        case_type = self.visit(node.exp, scope, current_class)
        scope.end_scope()
        return case_type

    @visitor.when(DotNode)
    def visit(self, node, scope, current_class):
        r_type = self.visit(node.expression, scope, current_class)
        if node.exp_type != None:
            conform = self.context.lca.conform(r_type, node.exp_type)
            if not conform:
                raise Exception("TypeError: Dispatch, Can't assign '{}' <- '{}'".format(node.exp_type, r_type))
        if r_type == "SELF_TYPE":  # pequeno parche para SELF_TYPE.ID()
            r_type = current_class
        if self.context.is_defined_method(r_type, node.method_id)[0]:
            par_id_type = self.context.get_method_params(r_type, node.method_id)
            return_type = self.context.get_return_param(r_type, node.method_id)
            if len(par_id_type) != len(node.exp):
                raise Exception("SemanticError: Params list has diferent length")
            for i,exp in enumerate(node.exp):
                expr_type = self.visit(exp, scope, current_class)
                conform = self.context.lca.conform(expr_type, par_id_type[i][1])
                if not conform:
                    raise Exception("TypeError: Dispatch, Can't save '{}' in '{}'".format(expr_type, par_id_type[i][1]))
            if return_type[0] == "SELF_TYPE":
                node.static_type = r_type
                return r_type
            else:
                node.static_type = return_type[0]       
                return return_type[0]

        raise Exception("AttributeError: '{}' undefined in {}".format(node.method_id, current_class))