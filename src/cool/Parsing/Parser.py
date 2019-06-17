import ply.yacc as yacc
import cool.AST.ast_hierarchy as ast_hierarchy

class Parser(object):
    def __init__(self, lexer_instance):
        self.lexer = lexer_instance.lexer
        self.tokens = list(lexer_instance.tokens)
        self.names = []

        # print(self.tokens)
        self.parser = yacc.yacc(start='program', module=self)

    def get_column(self, pos_p):
        line_start = self.lexer.lexdata.rfind('\n',0,pos_p)
        return pos_p - line_start

    def parse(self, text):
        """
        input: code in COOL
        return: AST head (ProgramNode)
        """
        return self.parser.parse(text)

    precedence = (
        ('right', 'ASSIGN'),
        ('right', 'NOT'),
        ('nonassoc', 'LTEQ', 'LT', 'EQUALS'),
        ('left', 'PLUS', 'MINUS'),
        ('left', 'TIMES', 'DIVIDE'),
        ('right', 'ISVOID'),
        ('right', 'NOT_INT'),
        ('left', 'AT'),
        ('left', 'DOT')
    )

    def p_program(self, p):
        """
        program : class SEMICOLON class_list
        """
        p[0] = ast_hierarchy.ProgramNode({**p[1], **p[3]})

    def p_class_list(self,p):
        """
        class_list : class SEMICOLON class_list
        """
        p[0] = {**p[1], **p[3]}

    def p_class_list_empty(self, p):
        """
        class_list : empty
        """
        p[0] = {}

    def p_class(self, p):
        """
        class : CLASS TYPE inherits LBRACE feature_list RBRACE
        """
        self.names.append(p[2])
        p[0] = {p[2] : ast_hierarchy.ClassNode(p[2], p[3], p[5])}

    def p_inherits(self, p):
        """
        inherits : INHERITS TYPE
        """
        p[0] = p[2]

    def p_inherits_empty(self, p):
        """
        inherits : empty
        """
        p[0] = "Object"  # change for ast_hierarchy.Object 
    
    def p_feature_list_attribute(self, p):
        """
        feature_list : feature_attribute SEMICOLON feature_list
        """
        p[0] = [p[1]] + p[3]

    def p_feature_list_method(self, p):
        """
        feature_list : feature_method SEMICOLON feature_list
        """
        p[0] = [p[1]] + p[3]

    def p_feature_list_empty(self, p):
        """
        feature_list : empty
        """
        p[0] = []

    def p_feature_attribute(self, p):
        """
        feature_attribute : ID COLON TYPE
        """
        p[0] = ast_hierarchy.Atribute_Definition(p[1], p[3], None)

    def p_feature_attribute_with_expr(self, p):
        """
        feature_attribute : ID COLON TYPE ASSIGN expr
        """
        p[0] = ast_hierarchy.Atribute_Definition(p[1], p[3], p[5])

    def p_feature_method(self, p):
        """
        feature_method : ID LPAREN params RPAREN COLON TYPE LBRACE expr RBRACE
        """
        p[0] = ast_hierarchy.Method_Definition(p[1], p[3], p[6], p[8])

    def p_params(self, p):
        """
        params : ID COLON TYPE more_params
        """
        p[0] = [ast_hierarchy.ParamNode(p[1], p[3])] + p[4]

    def p_params_empty(self, p):
        """
        params : empty
        """
        p[0] = []

    def p_more_params(self, p):
        """
        more_params : COMMA ID COLON TYPE more_params
        """
        p[0] = [ast_hierarchy.ParamNode(p[2], p[4])] + p[5]

    def p_more_params_empty(self, p):
        """
        more_params : empty
        """
        p[0] = []

    def p_expr_assign(self, p):
        """
        expr : ID ASSIGN expr
        """
        p[0] = ast_hierarchy.AssignNode(p[1],p[3])

    def p_simple_dispatch(self, p):
        """
        expr : expr DOT ID LPAREN params_expr RPAREN
        """
        p[0] = ast_hierarchy.DotNode(p[1], p[3], p[5], None)

    def p_dispatch(self, p):
        """
        expr : expr AT TYPE DOT ID LPAREN params_expr RPAREN
        """
        p[0] = ast_hierarchy.DotNode(p[1], p[5], p[7], p[3])

    def p_invoke_method(self, p):
        """
        expr : ID LPAREN params_expr RPAREN
        """
        p[0] = ast_hierarchy.MethodCallNode(p[1], p[3])

    def p_params_expr(self, p):
        """
        params_expr : expr more_params_expr
        """
        p[0] = [p[1]] + p[2]

    def p_params_expr_empty(self, p):
        """
        params_expr : empty
        """
        p[0] = []

    def p_more_params_expr(self, p):
        """
        more_params_expr : COMMA expr more_params_expr
        """
        p[0] = [p[2]] + p[3]

    def p_more_params_expr_empty(self, p):
        """
        more_params_expr : empty
        """
        p[0] = []

    def p_if_expr(self, p):
        """
        expr : IF expr THEN expr ELSE expr FI
        """
        p[0] = ast_hierarchy.IfNode(p[2], p[4], p[6])

    def p_while_expr(self, p):
        """
        expr : WHILE expr LOOP expr POOL
        """
        p[0] = ast_hierarchy.WhileNode(p[2], p[4])

    def p_block_expr(self, p):
        """
        expr : LBRACE expr_list RBRACE
        """ 
        p[0] = p[2]

    def p_expr_list(self, p):
        """
        expr_list : expr SEMICOLON others_expr
        """
        p[0] = ast_hierarchy.BlockNode([p[1]] + p[3])

    def p_others_expr(self, p):
        """
        others_expr : expr SEMICOLON others_expr
        """
        p[0] = [p[1]] + p[3]

    def p_others_expr_empty(self, p):
        """
        others_expr : empty
        """
        p[0] = []

    def p_let_expr(self, p):
        """
        expr : LET let_exprs IN expr 
        """
        p[0] = ast_hierarchy.LetInNode(p[2], p[4])
    
    def p_let_exprs_with_assign(self, p):
        """
        let_exprs : ID COLON TYPE ASSIGN expr let_more
        """
        p[0] = [ast_hierarchy.DeclarationNode(p[1], p[3], p[5])] + p[6]

    def p_let_exprs(self, p):
        """
        let_exprs : ID COLON TYPE let_more
        """
        p[0] = [ast_hierarchy.DeclarationNode(p[1], p[3])] + p[4]

    def p_let_more_with_assign(self, p):
        """
        let_more : COMMA ID COLON TYPE ASSIGN expr let_more
        """
        p[0] = [ast_hierarchy.DeclarationNode(p[2], p[4], p[6])] + p[7]

    def p_let_more(self, p):
        """
        let_more : COMMA ID COLON TYPE let_more
        """
        p[0] = [ast_hierarchy.DeclarationNode(p[2], p[4])] + p[5]


    def p_let_more_empty(self, p):
        """
        let_more : empty
        """
        p[0] = []

    def p_case(self, p):
        """
        expr : CASE expr OF arrow_expr ESAC
        """
        p[0] = ast_hierarchy.CaseNode(p[4], p[2])
    
    def p_case_exprs(self, p):
        """
        arrow_expr : ID COLON TYPE ARROW expr SEMICOLON other_arrow
        """
        p[0] = [ast_hierarchy.Case(p[1], p[3], p[5])] + p[7]

    def p_others_cases(self, p):
        """
        other_arrow : ID COLON TYPE ARROW expr SEMICOLON other_arrow
        """
        p[0] = [ast_hierarchy.Case(p[1], p[3], p[5])] + p[7]

    def p_others_cases_empty(self, p):
        """
        other_arrow : empty
        """
        p[0] = []

    def p_new_type(self, p):
        """
        expr : NEW TYPE
        """
        p[0] = ast_hierarchy.NewNode(p[2])

    def p_isvoid(self, p):
        """
        expr : ISVOID expr
        """
        p[0] = ast_hierarchy.IsVoidNode(p[2])

    def p_plus(self, p):
        """
        expr : expr PLUS expr
        """
        p[0] = ast_hierarchy.PlusNode(p[1], p[3])

    def p_minus(self, p):
        """
        expr : expr MINUS expr
        """
        p[0] = ast_hierarchy.MinusNode(p[1], p[3])
    
    def p_times(self, p):
        """
        expr : expr TIMES expr
        """
        p[0] = ast_hierarchy.StarNode(p[1], p[3])
    
    def p_divide(self, p):
        """
        expr : expr DIVIDE expr
        """
        p[0] = ast_hierarchy.DivNode(p[1], p[3])
    
    def p_int_comp(self, p):
        """
        expr : NOT_INT expr
        """
        p[0] = ast_hierarchy.IntComplement(p[2])

    def p_lt(self, p):
        """
        expr : expr LT expr
        """
        p[0] = ast_hierarchy.LessThan(p[1], p[3])

    def p_lteq(self, p):
        """
        expr : expr LTEQ expr
        """
        p[0] = ast_hierarchy.LessThanEquals(p[1], p[3])

    def p_equals(self, p):
        """
        expr : expr EQUALS expr
        """
        p[0] = ast_hierarchy.Equals(p[1], p[3])

    def p_not(self, p):
        """
        expr : NOT expr
        """
        p[0] = ast_hierarchy.NegationNode(p[2])

    def p_paren(self, p):
        """
        expr : LPAREN expr RPAREN
        """
        p[0] = ast_hierarchy.ParentesisNode(p[2])

    def p_int(self, p):
        """
        expr : INT
        """
        p[0] = ast_hierarchy.IntegerNode(p[1])

    def p_string(self, p):
        """
        expr : STRING
        """
        p[0] = ast_hierarchy.StringNode(p[1])

    def p_bool(self, p):
        """
        expr : BOOL
        """
        p[0] = ast_hierarchy.BoolNode(p[1])

    def p_id(self, p):
        """
        expr : ID
        """
        p[0] = ast_hierarchy.VariableNode(p[1])

    def p_empty(self, p):
        """
        empty :
        """

    def p_error(self, p):
        if p:
            column = self.get_column(p.lexpos)
            raise Exception("SyntacticError:({}, {}) character: {}, type: {}".format(
                p.lineno, column, p.value, p.type))
            # Just discard the token and tell the parser it's okay.
            # self.parser.errok()
        else:
            raise Exception("SyntacticError: Syntax error at EOF")