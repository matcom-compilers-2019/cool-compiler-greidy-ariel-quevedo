import ply.lex as lex
from ply.lex import TOKEN

class Lexer(object):
    def __init__(self):
        self.reserved = self.keyword
        self.tokens = self.tokens_list + tuple(self.keyword.values())
        
        self.states = (
            ('string', 'exclusive'),
            ('comment', 'exclusive')
        )

        self.lexer = lex.lex(module=self)

    def test(self, text):
        self.lexer.input(text)
        while True:
            token = self.lexer.token()
            if not token:
                break
            print(token)

    t_ignore_COMMENT_LINE = r'\-\-[^\n]*'
    t_ignore = ' \t\r\f'
    t_comment_ignore = ''
    t_string_ignore = ''

    t_LPAREN = r'\('
    t_RPAREN = r'\)'
    t_LBRACE = r'\{'
    t_RBRACE = r'\}'
    t_COLON = r'\:'
    t_COMMA = r'\,'
    t_DOT = r'\.'
    t_SEMICOLON = r'\;'
    t_AT = r'\@'
    t_PLUS = r'\+'
    t_MINUS = r'\-'
    t_TIMES = r'\*'
    t_DIVIDE = r'\/'
    t_LT = r'\<'
    t_LTEQ = r'\<\='
    t_EQUALS = r'\='
    t_NOT_INT = r'\~'
    t_ASSIGN = r'\<\-'
    t_ARROW = r'\=\>'
    t_TYPE = r'[A-Z][a-zA-Z_0-9]*'
    
    @TOKEN(r"true|false")
    def t_BOOL(self, lextoken):
        lextoken.value = True if lextoken.value == "true" else False
        return lextoken

    @TOKEN(r"[a-z][a-zA-Z_0-9]*")
    def t_ID(self, lextoken):
        # if lextoken.value is not a reserved word then get "ID" type
        if lextoken.value in self.keyword.keys():
            lextoken.type = self.keyword[lextoken.value]
        else:
            lextoken.type = "ID"
        # lextoken.type = self.keyword.get(lextoken.value, "ID")
        return lextoken

    @TOKEN(r"\d+")
    def t_INT(self, lextoken):
        lextoken.value = int(lextoken.value)
        return lextoken

    @TOKEN(r"\n+")
    def t_newline(self, lextoken):
        lextoken.lexer.lineno += len(lextoken.value)
        # lextoken.lexer.lexpos = 0

    @TOKEN(r"\"")
    def t_begin_string(self, lextoken):
        lextoken.lexer.push_state('string')
        lextoken.lexer.string = ""
        lextoken.lexer.is_backslash = False

    @TOKEN(r"\n")
    def t_string_newline(self, lextoken):
        if lextoken.lexer.is_backslash:
            lextoken.lexer.is_backslash = False
        else:
            print("-----String Error in word %s -----" % (lextoken.value))

    @TOKEN(r"\"")
    def t_string_end(self, lextoken):
        if not lextoken.lexer.is_backslash:
            lextoken.type = "STRING"
            lextoken.value = lextoken.lexer.string
            lextoken.lexer.pop_state()
            return lextoken
        else:
            lextoken.lexer.string += '"'
            lextoken.lexer.is_backslash = False

    @TOKEN(r"[^\n]")
    def t_string_save_character(self, lextoken):
        if lextoken.lexer.is_backslash:
            if lextoken.value == 'b':
                lextoken.lexer.string += "\b"
            elif lextoken.value == 't':
                lextoken.lexer.string += "\t"
            elif lextoken.value == 'f':
                lextoken.lexer.string += "\f"
            elif lextoken.value == 'n':
                lextoken.lexer.string += "\n"
            elif lextoken.value == '\\':
                lextoken.lexer.string += "\\"
            else:
                lextoken.lexer.string += lextoken.value
            lextoken.lexer.is_backslash = False
        else:
            if lextoken.value != "\\":
                lextoken.lexer.string += lextoken.value
            else:
                lextoken.lexer.is_backslash = True

    @TOKEN(r"\(\*")
    def t_begin_comment(self, lextoken):
        lextoken.lexer.push_state('comment')
        lextoken.lexer.level = 1

    @TOKEN(r"\(\*")
    def t_comment_open(self, lextoken):
        lextoken.lexer.level += 1

    @TOKEN(r"\*\)")
    def t_comment_end(self, lextoken):
        lextoken.lexer.level -=1

        if lextoken.lexer.level == 0:
            lextoken.lexer.pop_state()
    
    def t_error(self, lextoken):
        print("LexicographicError: Bad token %s -----" % (lextoken.value))

    def t_string_error(self, lextoken):
        print("LexicographicError: String Error in word %s -----" % (lextoken.value))
    
    def t_comment_error(self, lextoken):
        lextoken.lexer.skip(1)
    

    @property
    def tokens_list(self):
        return (
            # Symbols
            "LPAREN", "RPAREN", "LBRACE", "RBRACE",
             "COLON", "COMMA", "DOT", "SEMICOLON", "AT",
            # Binary arithmetic operators
            "PLUS", "MINUS", "TIMES", "DIVIDE",
            # Comparison operators
            "LT", "LTEQ", "EQUALS",
            # Unary operators
            "NOT_INT",
            # Arrows ( <-, => )
            "ASSIGN", "ARROW",
            # Identifiers
            "TYPE", "ID",
            # Types
            "INT", "STRING", "BOOL"
        )

    @property
    def keyword(self):
        return {
            # FALSE, TRUE
            'class':"CLASS", "inherits":"INHERITS",
            "if":"IF", "then":"THEN", "else":"ELSE", "fi":"FI",
            "let":"LET", "in":"IN",
            "while":"WHILE", "loop":"LOOP", "pool":"POOL",
            "case":"CASE", "of":"OF", "esac":"ESAC",
            "new":"NEW",
            "isvoid":"ISVOID",
            "not":"NOT"
        }