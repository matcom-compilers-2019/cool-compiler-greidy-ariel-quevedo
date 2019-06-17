from Cool.cool.AST.ast_hierarchy import *
import Cool.cool.Visitors.visitor as visitor  # Quitar el 'Cool.' para correrlo

class Painter(object):
    @visitor.on('node')
    def visit(self, node, tabs):
        pass

    @visitor.when(ProgramNode)
    def visit(self, node, tabs):
        s = 'Program \n{\n'
        for _class in node.class_list:
            s += self.visit(_class, 1)
        s += '}'
        return s

    @visitor.when(ClassNode)
    def visit(self, node, tabs):
        s = '\t' * tabs + node.name + ', parent : ' + str(node.parent) + '\n' + '\t' * tabs +'{\n'
        for feature in node.feature_list:
            s += self.visit(feature, 2)
        s += '\t' * tabs + '}\n'
        return s

    @visitor.when(Atribute_Definition)
    def visit(self, node, tabs):
        s = '\t' * tabs + 'Attribute ' + node.att_id + ', with type : ' + str(node.att_type) + \
            '\n' + '\t' * (tabs + 1)
        if node.expr != None:
            s += self.visit(node.expr, tabs)
        else:
            s += 'No init'
        s += '\n'
        return s

    @visitor.when(Method_Definition)
    def visit(self, node, tabs):
        s = '\t' * tabs + 'Method ' + node.meth_id + '('
        save_visit = []
        for param in node.param_list:
            save_visit.append(self.visit(param, tabs))
        s += ", ".join(save_visit)
        s += ') : ' + node.return_type + '\n'+ '\t' * tabs +'{\n'
        s += '\t' * tabs
        s += self.visit(node.exp, 3)
        s += '\n' + '\t' * tabs + '}\n'
        return s

    @visitor.when(ParamNode)
    def visit(self, node, tabs):
        s = node.par_id + ':' + node.par_type
        return s

    @visitor.when(BinaryOperatorNode)
    def visit(self, node, tabs):
        s = node.__class__.__name__ + '(' + self.visit(node.left, tabs) + ', ' + \
            self.visit(node.right, tabs) + ')'
        return s

    @visitor.when(UnaryOperator)
    def visit(self, node, tabs):
        s = node.__class__.__name__ + '(' + self.visit(node.left, tabs)+ ')'
        return s

    @visitor.when(CompareNode)
    def visit(self, node, tabs):
        s = node.__class__.__name__ + '(' + self.visit(node.left, tabs) + ', ' + \
            self.visit(node.right, tabs) + ')'
        return s

    @visitor.when(AssignNode)
    def visit(self, node, tabs):
        s = 'Assign ' + node.idx_token + ' init with ' + self.visit(node.expr, tabs)
        return s

    @visitor.when(VariableNode)
    def visit(self, node, tabs):
        s = 'Variable ' + node.idx_token
        return s

    @visitor.when(IntegerNode)
    def visit(self, node, tabs):
        s = 'Integer ' + str(node.integer_token)
        return s
    
    @visitor.when(StringNode)
    def visit(self, node, tabs):
        s = 'String ' + node.string
        return s

    @visitor.when(BoolNode)
    def visit(self, node, tabs):
        s = 'Bool ' + str(node.boolean)
        return s

    @visitor.when(BlockNode)
    def visit(self, node, tabs):
        s = 'Block \n' + '\t' * (tabs + 1)
        for expr in node.expr_list:
            try:
                s += self.visit(expr, tabs) # 'AQUI ESTA DANDO BATEO ' + expr.__class__.__name__
            except Exception:
                s += 'AQUI ESTA DANDO BATEO ' + expr.__class__.__name__ # Xq no esta implementado
            s += '\n' + '\t' * (tabs + 1)
        return s

    @visitor.when(NewNode)
    def visit(self, node, tabs):
        s = 'New ' + self.visit(node.type, tabs)
        return s

    @visitor.when(ParentesisNode)
    def visit(self, node, tabs):
        s = 'Parentisis ' + self.visit(node.expr, tabs)
        return s

    @visitor.when(WhileNode)
    def visit(self, node, tabs):
        s = 'While ' + self.visit(node.condition, tabs) + '\n' + \
            '\t' * (tabs + 1) + self.visit(node.exp, tabs + 1)
        return s

    @visitor.when(IfNode)
    def visit(self, node, tabs):
        s = 'If ' + self.visit(node.condition, tabs) + ' Then ' + self.visit(node.true_exp, tabs) + '\n' + \
            '\t' * (tabs) + 'Else ' + self.visit(node.false_exp, tabs)
        return s

    @visitor.when(LetInNode)
    def visit(self, node, tabs):
        s = 'Let ('
        save_declaration = []
        for declaration in node.declaration_list:
            save_declaration.append(self.visit(declaration, tabs))
        s += ", ".join(save_declaration)
        s += ') in ' + self.visit(node.expr, tabs)

    @visitor.when(DeclarationNode)
    def visit(self, node, tabs):
        s = node.idx_token + ':' + node.id_type + '<-' + self.visit(node.expr, tabs)
        return s

    @visitor.when(DotNode)
    def visit(self, node, tabs):
        s = 'DOT ' + self.visit(node.expression, tabs) + '.' + node.method_id + 'from type : ' + str(node.exp_type)
        s += ' with params ('
        save_expr = []
        for expr in node.exp:
            save_expr.append(self.visit(expr, tabs))
        s += ", ".join(save_expr)
        s += ')'
        return s

    @visitor.when(MethodCallNode)
    def visit(self, node, tabs):
        s = 'Call Method with id : ' + node.method_id + '('
        save_expr = []
        for expr in node.exp:
            save_expr.append(self.visit(expr, tabs))
        s += ", ".join(save_expr)
        s += ')'
        return s

    @visitor.when(CaseNode)
    def visit(self, node, tabs):
        s = 'Case ' + self.visit(node.exp, tabs) + '\n'
        save_case = []
        for case in node.cases_list:
            save_case.append(self.visit(case, tabs))
        s += ", ".join(save_case)
        return s

    @visitor.when(Case)
    def visit(self, node, tabs):
        s = '\t' * tabs + '\n'
        s += '_simple_case ' + node.var_id + ':' + node.exp_type + '=> '
        s += self.visit(node.exp)
        return s
