from cool.AST.ast_hierarchy import *  # Quitar el 'Cool.' para correrlo
from cool.AST.ast_cil import *
import cool.Visitors.visitor as visitor
import cool.Context.context2 as enviroment

## Falta el CASE y STRING no c que hacer con los .DATA
## Falta tambien funcion entry

class CIL_Tree(object):

    def __init__(self,context):
        self.context = context
        self.code_count = 0
        self.local_count = 0
        self.label_count = 0
        self.self_instance = 0
        self.void = 0
        self.empty_string = 0

        self.data = []

    def __builtin(self):
        f00 = FunctionCIL("initialize_Object", [ArgCIL(LocalCIL("instance"))],[],[])
        m0 = MethodCIL("initialize_Object", "initialize_Object", f00)
##Object copy
        l = LocalCIL("to_copy")
        arg = ArgCIL(l)
        local = LocalCIL("save_copy")
        f0 = FunctionCIL("Object_copy",[arg],[self.void, local],[AssignCIL(local, CopyCIL(l))])
        m = MethodCIL("copy", "Object_copy", f0)

##Object abort
        arg2 = ArgCIL(LocalCIL("self_Object"))
        f1 = FunctionCIL("Object_abort",[arg2],[self.void],[AbortCIL()])
        m1 = MethodCIL("abort","Object_abort",f1)
##
##type_name
        l = LocalCIL("self_Object")
        arg2 = ArgCIL(l)
        name = "name"
        local = LocalCIL(name)
        name2 = "type_name_ref"
        local2 = LocalCIL(name2)
        # m = MessageCIL("s_object","Object")
        # self.data.append(m)
        typ = TypeofCIL(l)
        assign = AssignCIL(local, typ)
        assign2 = AssignCIL(local2, TypeNameCIL(local))
        f2 = FunctionCIL("Object_type_name",[arg2],[local, local2, self.void],[assign,assign2])
        m2 = MethodCIL("type_name","Object_type_name",f2)
##
        Obj = TypeCIL("Object", [], [m,m1,m2,m0])
##Int
        f01 = FunctionCIL("initialize_Int", [ArgCIL(LocalCIL("instance"))],[],[])
        m0 = MethodCIL("initialize_Int", "initialize_Int", f01)
        Int = TypeCIL("Int",[AttributeCIL("value", 0)],[m,m1,m2,m0])
##Bool
        f02 = FunctionCIL("initialize_Bool", [ArgCIL(LocalCIL("instance"))],[],[])
        m0 = MethodCIL("initialize_Bool", "initialize_Bool", f02)
        Bool = TypeCIL("Bool",[AttributeCIL("value", 0)],[m,m1,m2,m0])
##IO out_string out_int
        f03 = FunctionCIL("initialize_IO", [ArgCIL(LocalCIL("instance"))],[],[])
        m0 = MethodCIL("initialize_IO", "initialize_IO", f03)

        l = LocalCIL("out_string")
        arg = ArgCIL(l)
        l2 = LocalCIL("self_IO")
        arg2 = ArgCIL(l2)
        p = PrintStringCIL(l)
        f4 = FunctionCIL("IO_out_string",[arg2, arg],[self.void],[p,AssignCIL(l, l2)])
        m4 = MethodCIL("out_string","IO_out_string",f4)

        l = LocalCIL("out_int")
        arg = ArgCIL(l)
        l2 = LocalCIL("self_IO")
        arg2 = ArgCIL(l2)
        p = PrintIntegerCIL(l)
        f5 = FunctionCIL("IO_out_int",[arg2, arg],[self.void],[p,AssignCIL(l, l2)])
        m5 = MethodCIL("out_int","IO_out_int",f5)

        l = LocalCIL("x_in_string")
        arg2 = ArgCIL(LocalCIL("self_IO"))
        asign = AssignCIL(l,ReadStringCIL())
        f6 = FunctionCIL("IO_in_string",[arg2],[self.void,l],[asign])
        m6 = MethodCIL("in_string","IO_in_string",f6)
        
        l = LocalCIL("x_in_int")
        arg2 = ArgCIL(LocalCIL("self_IO"))
        asign = AssignCIL(l,ReadIntegerCIL())
        f7 = FunctionCIL("IO_in_int",[arg2],[l,self.void],[asign])
        m7 = MethodCIL("in_int","IO_in_int",f7)
        IO = TypeCIL("IO",[],[m,m1,m2,m4,m5,m6,m7,m0])

##String
        f04 = FunctionCIL("initialize_String", [ArgCIL(LocalCIL("instance"))],[],[])
        m0 = MethodCIL("initialize_String", "initialize_String", f04)

        l = LocalCIL("x_str")
        l1 = LocalCIL("x_str_length")
        arg = ArgCIL(l)
        # arg2 = ArgCIL(LocalCIL("self_String"))
        assign = AssignCIL(l1, LengthCIL(l))
        f8 = FunctionCIL("String_length",[arg],[l1,self.void],[assign])
        m8 = MethodCIL("length","String_length",f8)

        l = LocalCIL("x_str1")
        l2 = LocalCIL("self_String")
        arg = ArgCIL(l)
        arg2 = ArgCIL(l2)
        l1 = LocalCIL("x_str_concat")
        assign = AssignCIL(l1, ConcatCIL(l,l2))
        f9 = FunctionCIL("String_concat",[arg,arg2],[l1,self.void],[assign])
        m9 = MethodCIL("concat","String_concat",f9)

        l = LocalCIL("x_i")
        l2 = LocalCIL("x_j")
        l3 = LocalCIL("self_String")
        arg = ArgCIL(l)
        arg2 = ArgCIL(l2)
        arg3 = ArgCIL(l3)
        l1 = LocalCIL("x_sub_str")
        assign = AssignCIL(l1, SubStrCIL(l3,l2,l))
        f10 = FunctionCIL("String_substring",[arg,arg2,arg3],[l1,self.void],[assign])
        m10 = MethodCIL("substr","String_substring",f10)
 
        String = TypeCIL("String",[AttributeCIL("value", 0)],[m,m1,m2,m8,m9,m10,m0])
##
        return [Obj, Int, Bool, IO, String], [f00,f01,f02,f03,f04,f0,f1,f2,f4,f5,f6,f7,f8,f9,f10]

    def entry(self):
        # self.void = LocalCIL("isvoid")

        _locals = []
        _body = []
        name_initial = "x_"+str(self.local_count)
        self.local_count += 1
        local_initial = LocalCIL(name_initial)
        name_instance = "x_"+str(self.local_count)
        self.local_count += 1
        name_result = "x_"+str(self.local_count)
        self.local_count += 1
        local_result = LocalCIL(name_result)
        local_instance = LocalCIL(name_instance)

        allocate = AllocateCIL("Main")
        assign_main = AssignCIL(local_instance, allocate)
        param = ParamCIL(local_instance)
        call = CallCIL("Main_main")
        assign_result = AssignCIL(local_result, call)
        initial = CallCIL("initialize_Main")
        assign = AssignCIL(local_initial, initial)

        _locals.append(local_instance)
        _locals.append(local_result)
        _locals.append(local_initial)
        _body.append(assign_main)
        _body.append(ParamCIL(local_instance))
        _body.append(assign)
        _body.append(param)
        _body.append(assign_result)
        _body.append(AbortCIL())

        return FunctionCIL("main",[], _locals, _body)

    def __boxing(self, x_type, local_value):
        name_local = "x_"+str(self.local_count)
        self.local_count += 1
        local = LocalCIL(name_local)
        allocate = AllocateCIL(x_type)
        assign = AssignCIL(local, allocate)
        setAttr = SetAttrCIL(local, 0, local_value)

        return [local], [assign, setAttr], local

    def __search(self, parent, list_type):
        for _type in list_type:
            if _type.name == parent:
                return _type
        # return TypeCIL("Object", [], [m,m1,m2,m0])

    def __method_union(self, methods_parent, methods):
        union = []
        for m in methods_parent:
            from_parent = False
            for m_new in methods:
                if m.old_name == m_new.old_name:
                    from_parent = True
                    m1 = MethodCIL(m.old_name, m_new.name, m_new.function)
                    union.append(m1)
            if not from_parent:
                union.append(m)

        news = []
        for m_new in methods:
            is_in_union = False
            for u in union:
                if m_new.old_name == u.old_name:
                    is_in_union = True
                    break
            if not is_in_union:
                news.append(m_new)
        return union + news

    @visitor.on('node')
    def visit(self, node, current_class):
        pass

    @visitor.when(ProgramNode)
    def visit(self, node, current_class):
        type_list = []
        function_list = []
        m = MessageCIL("_vacio","")
        self.data.append(m)
        self.empty_string = m
        self.void = LocalCIL("isvoid")
        t,f = self.__builtin()
        type_list += t
        function_list += f

        order = self.context.lca.preorden()

        for _class in order:
            self.self_instance = LocalCIL("self_{}".format(_class))
            n = node.class_list[_class]
            parent = self.__search(n.parent, type_list)

            _type,_function = self.visit(n, parent, _class, enviroment.Scope(_class))
            type_list.append(_type)
            function_list += _function
        function_list.append(self.entry())
        code = CodeCIL(function_list)
        return ProgramCIL(type_list,[DataCIL(self.data)], code)

    @visitor.when(ClassNode)
    def visit(self, node, parent, current_class, scope):
        attr_list = []
        method_list = []
        code_list = []
        name = node.name
        O = self.context.get_O_by_class(current_class)
        # list_id = self.context.get_list_id(current_class)
        # print(current_class + "->" + ",".join(list_id))
        scope.new_scope(O)
        
        init_local = [self.void]
        init_code = []

        for feature in node.feature_list:
            attr, method, code = self.visit(feature, name, scope)
            if attr != None:
                l, c = code
                init_local += l
                init_code += c
                attr_list.append(attr)
            if method != None:
                method_list.append(method)
                code_list += code

        local_result = LocalCIL("return")
        assign = AssignCIL(local_result, self.self_instance)
        init_local.append(local_result)
        init_code.append(assign)
        if len(parent.attr_list) != 0:
            name_l = LocalCIL("x_"+str(self.local_count))
            self.local_count += 1
            p = ParamCIL(self.self_instance)
            assign_call = AssignCIL(name_l, CallCIL("initialize_"+parent.name))
            init_local.append(name_l)
            init_code = [p, assign_call] + init_code
        f = FunctionCIL("initialize_"+current_class,[ArgCIL(self.self_instance)],init_local,init_code)
        m = MethodCIL("initialize_"+current_class,"initialize_"+current_class,f)
        method_list += [m]
        code_list.append(f)

        union_m = self.__method_union(parent.method_list, method_list)

        new_type = TypeCIL(name, parent.attr_list + attr_list, union_m)
        scope.end_scope()
        return (new_type, code_list)

    @visitor.when(Atribute_Definition)
    def visit(self, node, current_class, scope):
        name = node.att_id
        attr = AttributeCIL(name, 0)
        _locals = []
        _code = []
        if node.expr != None:
            _locals, _code, local = self.visit(node.expr, current_class, scope)

            _, left_type = scope.is_defined(node.att_id)
            if left_type == "Object" and node.expr.static_type in ["String","Int","Bool"]:
                l, b, v = self.__boxing(node.expr.static_type, local)
                local = v
                _locals += l
                _code += b

            l = self.context.get_list_id(current_class)
            i = l.index(name)
            setAttr = SetAttrCIL(self.self_instance, i, local)
            _code.append(setAttr)
        else:
            if not node.att_type in ["Int", "Bool", "String"]:
                l = self.context.get_list_id(current_class)
                i = l.index(name)
                setAttr = SetAttrCIL(self.self_instance, i, self.void)
                _code.append(setAttr)
            elif node.att_type == "String":
                l = self.context.get_list_id(current_class)
                i = l.index(name)
                name_local = "x_"+str(self.local_count)
                self.local_count += 1
                local = LocalCIL(name_local)
                assign = AssignCIL(local, LoadCIL(self.empty_string))
                setAttr = SetAttrCIL(self.self_instance, i, local)
                _code.append(assign)
                _code.append(setAttr)
                _code.append(assign)
                _locals.append(local)
            else:
                name_local = "x_"+str(self.local_count)
                self.local_count += 1
                local = LocalCIL(name_local)
                l = self.context.get_list_id(current_class)
                i = l.index(name)
                setAttr = SetAttrCIL(self.self_instance, i, local)
                _code.append(setAttr)
                _locals.append(local)
            
        return attr, None, (_locals,_code) 

    @visitor.when(Method_Definition)
    def visit(self, node, current_class, scope):
        new_name = "{}_{}".format(current_class,node.meth_id)
        _locals_args = []
        # if node.meth_id == "main":
        _locals_args.append(self.void)
        # save_name = self.self_instance.name
        # self.self_instance.name += "_{}".format(node.meth_id)
        param_list = [ArgCIL(self.self_instance)]
        O = enviroment.ObjectEnviroment(current_class)
        for param in node.param_list[::-1]:
            p,t = self.visit(param, current_class, node.meth_id, scope)
            # _locals_args.append(p.arg)
            O.add(p,t, self.local_count)
            self.local_count += 1
            temp_local = O.get_local(p)
            param_list.append(ArgCIL(temp_local))
            
        scope.new_scope(O)
        _locals, _code, _ = self.visit(node.exp, current_class, scope)
        scope.end_scope()
        f = FunctionCIL(new_name,param_list, _locals_args+_locals, _code)
        meth = MethodCIL(node.meth_id, new_name, f)
        return None, meth, [f]

    @visitor.when(ParamNode)
    def visit(self, node, current_class, function, scope):
        return node.par_id, node.par_type

    @visitor.when(AssignNode)
    def visit(self, node, current_class, scope):
        _locals = []
        _body = []

        local_expr, body_expr, value_expr = self.visit(node.expr, current_class, scope)
        _locals += local_expr
        _body += body_expr
        
        _, left_type = scope.is_defined(node.idx_token)
        if left_type == "Object" and node.expr.static_type in ["String","Int","Bool"]:
            l, b, v = self.__boxing(node.expr.static_type, value_expr)
            value_expr = v
            _locals += l
            _body += b
        
        name = "x_"+str(self.local_count)
        self.local_count += 1
        name_id = node.idx_token
        l = self.context.get_list_id(current_class)
        is_d, local_id, is_attr= scope.is_defined_local(node.idx_token)
        if name_id in l and is_attr:
            index = l.index(name_id)
            setAttr = SetAttrCIL(self.self_instance, index, value_expr)
            local = LocalCIL(name)
            assign = AssignCIL(local, GetAttrCIL(self.self_instance, index))
            _body.append(setAttr)
        elif is_d:
            # local = LocalCIL(name)
            local = local_id
            assign = AssignCIL(local, value_expr)
        else:
            local = LocalCIL(name)
            assign = AssignCIL(local, value_expr)
        _locals.append(local)
        _body.append(assign)
        return _locals ,_body, local


    @visitor.when(PlusNode)
    def visit(self, node, current_class, scope):
        _locals = []
        _body = []
        
        local_left, body_left, value_left = self.visit(node.left, current_class, scope)
        local_right, body_right, value_right = self.visit(node.right, current_class, scope)
        _locals += local_left + local_right
        _body += body_left + body_right

        name = "x_"+str(self.local_count)
        self.local_count += 1

        local = LocalCIL(name)
        expr = PlusCIL(value_left,value_right)
        assign = AssignCIL(local, expr)

        _locals.append(local)
        # _body.append(expr)
        _body.append(assign)
        return _locals, _body, local

    @visitor.when(MinusNode)
    def visit(self, node, current_class, scope):
        _locals = []
        _body = []

        local_left, body_left, value_left = self.visit(node.left, current_class, scope)
        local_right, body_right, value_right = self.visit(node.right, current_class, scope)
        _locals += local_left + local_right
        _body += body_left + body_right
        name = "x_"+str(self.local_count)
        self.local_count += 1

        local = LocalCIL(name)
        expr = MinusCIL(value_left,value_right)
        assign = AssignCIL(local, expr)

        _locals.append(local)
        # _body.append(expr)
        _body.append(assign)
        return _locals, _body, local

    @visitor.when(StarNode)
    def visit(self, node, current_class, scope):
        _locals = []
        _body = []

        local_left, body_left, value_left = self.visit(node.left, current_class, scope)
        local_right, body_right, value_right = self.visit(node.right, current_class, scope)
        _locals += local_left + local_right
        _body += body_left + body_right
        name = "x_"+str(self.local_count)
        self.local_count += 1

        local = LocalCIL(name)
        expr = StarCIL(value_left,value_right)
        assign = AssignCIL(local, expr)

        _locals.append(local)
        # _body.append(expr)
        _body.append(assign)
        return _locals, _body, local

    @visitor.when(DivNode)
    def visit(self, node, current_class, scope):
        _locals = []
        _body = []

        local_left, body_left, value_left = self.visit(node.left, current_class, scope)
        local_right, body_right, value_right = self.visit(node.right, current_class, scope)
        _locals += local_left + local_right
        _body += body_left + body_right
        name = "x_"+str(self.local_count)
        self.local_count += 1

        local = LocalCIL(name)
        expr = DivCIL(value_left,value_right)
        assign = AssignCIL(local, expr)

        _locals.append(local)
        # _body.append(expr)
        _body.append(assign)
        return _locals, _body, local

    @visitor.when(Equals)
    def visit(self, node, current_class, scope):
        _locals = []
        _body = []

        local_left, body_left, value_left = self.visit(node.left, current_class, scope)
        local_right, body_right, value_right = self.visit(node.right, current_class, scope)
        _locals += local_left + local_right
        _body += body_left + body_right
        name = "x_"+str(self.local_count)
        self.local_count += 1
        if node.left.static_type == "String":
            expr = EqualsStringCIL(value_left, value_right)
        else:
            expr = EqualsCIL(value_left, value_right)
        local = LocalCIL(name)
        assign = AssignCIL(local, expr)

        _locals.append(local)
        # _body.append(expr)
        _body.append(assign)
        return _locals, _body, local

    @visitor.when(LessThan)
    def visit(self, node, current_class, scope):
        _locals = []
        _body = []

        local_left, body_left, value_left = self.visit(node.left, current_class, scope)
        local_right, body_right, value_right = self.visit(node.right, current_class, scope)
        _locals += local_left + local_right
        _body += body_left + body_right
        name = "x_"+str(self.local_count)
        self.local_count += 1

        local = LocalCIL(name)
        expr = LessThanCIL(value_left, value_right)
        assign = AssignCIL(local, expr)

        _locals.append(local)
        # _body.append(expr)
        _body.append(assign)
        return _locals, _body, local

    @visitor.when(LessThanEquals)
    def visit(self, node, current_class, scope):
        _locals = []
        _body = []

        local_left, body_left, value_left = self.visit(node.left, current_class, scope)
        local_right, body_right, value_right = self.visit(node.right, current_class, scope)
        _locals += local_left + local_right
        _body += body_left + body_right
        name = "x_"+str(self.local_count)
        self.local_count += 1

        local = LocalCIL(name)
        expr = LessThanEqualsCIL(value_left, value_right)
        assign = AssignCIL(local, expr)

        _locals.append(local)
        # _body.append(expr)
        _body.append(assign)
        return _locals, _body, local

    @visitor.when(NegationNode)
    def visit(self, node, current_class, scope):
        _locals = []
        _body = []

        local_expr, body_expr, value_expr = self.visit(node.expr, current_class, scope)
        _locals += local_expr
        _body += body_expr
        name = "x_"+str(self.local_count)
        self.local_count += 1
        name_to_1 = "x_"+str(self.local_count)
        self.local_count += 1

        local = LocalCIL(name)
        local_1 = LocalCIL(name_to_1)
        assign_1 = AssignCIL(local_1, IntegerCIL(1))
        expr = MinusCIL(local_1,value_expr)
        assign = AssignCIL(local, expr)

        _locals.append(local_1)
        _locals.append(local)
        # _body.append(expr)
        _body.append(assign_1)
        _body.append(assign)
        return _locals, _body, local

    @visitor.when(IntComplement)
    def visit(self, node, current_class, scope):
        _locals = []
        _body = []

        local_expr, body_expr, value_expr = self.visit(node.expr, current_class, scope)
        _locals += local_expr
        _body += body_expr
        name = "x_"+str(self.local_count)
        self.local_count += 1
        name_0 = "x_"+str(self.local_count)
        self.local_count += 1

        local = LocalCIL(name)
        local_0 = LocalCIL(name_0)
        assign_0 = AssignCIL(local_0,IntegerCIL(0))
        expr = MinusCIL(local_0,value_expr)
        assign = AssignCIL(local, expr)

        _locals.append(local_0)
        _locals.append(local)
        # _body.append(expr)
        _body.append(assign_0)
        _body.append(assign)
        return _locals, _body, local

    @visitor.when(IsVoidNode)
    def visit(self, node, current_class, scope):
        _locals = []
        _body = []

        local_expr, body_expr, value_expr = self.visit(node.expr, current_class, scope)
        _locals += local_expr
        _body += body_expr
        name = "x_"+str(self.local_count)
        self.local_count += 1

        local = LocalCIL(name)
        if not node.expr.static_type in ["String", "Int", "Bool"]:
            expr = IsvoidCIL(value_expr)
            assign = AssignCIL(local, expr)
        else:
            assign = AssignCIL(local, IntegerCIL(0))

        _locals.append(local)
        # _body.append(expr)
        _body.append(assign)
        return _locals, _body, local

    @visitor.when(WhileNode)
    def visit(self, node, current_class, scope):
        _locals = []
        _body = []

        local_cond, body_cond, value_cond = self.visit(node.condition, current_class, scope)
        local_exp, body_exp, value_exp = self.visit(node.exp, current_class, scope)
        
        name = "x_"+str(self.local_count)
        self.local_count += 1
        name_label = "LABEL" + str(self.label_count)
        self.label_count += 1
        name_label_fin = "LABEL" + str(self.label_count)
        self.label_count += 1

        local = LocalCIL(name)
        label1 = LabelCIL(name_label)
        label_fin = LabelCIL(name_label_fin)
        assign = AssignCIL(local, value_cond)
        jump = IfGotoCIL(local,name_label_fin)
        jump_again = GotoCIL(name_label)
        # assign_null = AssignCIL(local, IntegerCIL(-1))
        local_return = self.void
        _locals += local_cond + local_exp
        _locals.append(local)

        _body.append(label1)
        _body += body_cond
        _body.append(assign)
        _body.append(jump)
        _body += body_exp
        _body.append(jump_again)
        _body.append(label_fin)
        # _body.append(assign_null)
        return _locals, _body, local_return

    @visitor.when(BlockNode)
    def visit(self, node, current_class, scope):
        _locals = []
        _body = []
        last_value = 0

        for expr in node.expr_list:
            local, body ,last_value = self.visit(expr, current_class, scope)
            _locals += local
            _body += body
        
        return _locals, _body, last_value

    @visitor.when(ParentesisNode)
    def visit(self, node, current_class, scope):
        local, body ,value = self.visit(node.expr, current_class, scope)
        return local, body, value
    
    @visitor.when(IfNode)
    def visit(self, node, current_class, scope):
        _locals = []
        _body = []
        l1 = []
        b1 = []
        l2 = []
        b2 = []

        local_cond, body_cond, value_cond = self.visit(node.condition, current_class, scope)
        local_true, body_true, value_true = self.visit(node.true_exp, current_class, scope)
        local_false, body_false, value_false = self.visit(node.false_exp, current_class, scope)
        
        if node.static_type == "Object": # and node.expr.static_type in ["String","Int","Bool"]:
            if node.true_exp.static_type in ["String","Int","Bool"]:
                l1, b1, v1 = self.__boxing(node.true_exp.static_type, value_true)
                value_true = v1
            if node.false_exp.static_type in ["String","Int","Bool"]:
                l2, b2, v2 = self.__boxing(node.false_exp.static_type, value_false)
                value_false = v2
            # _locals += l
            # _body += b

        name = "x_"+str(self.local_count)
        self.local_count += 1
        name_label_else = "LABEL" + str(self.label_count)
        self.label_count += 1
        name_label_fin = "LABEL" + str(self.label_count)
        self.label_count += 1

        local = LocalCIL(name)
        label1 = LabelCIL(name_label_else)
        label_fin = LabelCIL(name_label_fin)
        assign = AssignCIL(local, value_cond)
        cond = IfGotoCIL(local, name_label_else)
        assign_true = AssignCIL(local, value_true)
        assign_false = AssignCIL(local, value_false)
        goto = GotoCIL(name_label_fin)

        _locals += local_cond + local_true + local_false + l1 + l2
        _locals.append(local)

        _body += body_cond
        _body.append(assign)
        _body.append(cond)
        _body += body_true + b1
        _body.append(assign_true)
        _body.append(goto)
        _body.append(label1)
        _body += body_false + b2
        _body.append(assign_false)
        _body.append(label_fin)

        return _locals, _body, local

    @visitor.when(NewNode)
    def visit(self, node, current_class, scope):
        _locals = []
        _body = []

        name = "x_"+str(self.local_count)
        self.local_count += 1
        local = LocalCIL(name)
        name1 = "x_"+str(self.local_count)
        self.local_count += 1
        local1 = LocalCIL(name1)
        expr = AllocateCIL(node.type)
        assign = AssignCIL(local, expr)
        # assign_null = AssignCIL(local, IntegerCIL(-1))
        initial = CallCIL("initialize_"+node.type)
        assign2 = AssignCIL(local1, initial)

        _locals.append(local)
        _locals.append(local1)
        # _body.append(expr)
        _body.append(assign)
        _body.append(ParamCIL(local))
        _body.append(assign2)
        # _body.append(assign_null)
        return _locals, _body, local

    @visitor.when(IntegerNode)
    def visit(self, node, current_class, scope):
        _locals = []
        _body = []

        name = "x_"+str(self.local_count)
        self.local_count += 1
        local = LocalCIL(name)
        assign = AssignCIL(local, IntegerCIL(node.integer_token))
        
        _locals.append(local)
        _body.append(assign)
        return _locals, _body, local

    @visitor.when(StringNode)
    def visit(self, node, current_class, scope):
        name = "x_"+str(self.local_count)
        self.local_count += 1
        name_result = "x_"+str(self.local_count)
        self.local_count += 1
        local = LocalCIL(name)
        local_result = LocalCIL(name_result)

        msg = MessageCIL(name, node.string)
        load = LoadCIL(msg)
        assign = AssignCIL(local_result, load)

        self.data.append(msg)
        return [local_result],[assign],local_result

    @visitor.when(BoolNode)
    def visit(self, node, current_class, scope):
        _locals = []
        _body = []

        name = "x_"+str(self.local_count)
        self.local_count += 1
        local = LocalCIL(name)
        value = 1 if node.boolean else 0
        assign = AssignCIL(local, IntegerCIL(value))

        _locals.append(local)
        _body.append(assign)
        return _locals, _body, local

    @visitor.when(VariableNode)
    def visit(self, node, current_class, scope):
        _,local, is_attr = scope.is_defined_local(node.idx_token)
        if is_attr and node.idx_token != "self":
            l = self.context.get_list_id(current_class)
            i = l.index(node.idx_token)
            g = GetAttrCIL(self.self_instance, i)
            name = "x_"+str(self.local_count)
            self.local_count += 1
            local = LocalCIL(name)
            assign = AssignCIL(local, g)
            return [local], [assign], local
        elif node.idx_token == "self":
            name = "x_"+str(self.local_count)
            self.local_count += 1
            local = LocalCIL(name)
            assign = AssignCIL(local, self.self_instance)
            return [local], [assign], local
        else:
        # assign = AssignCIL(LocalCIL("new"+node.idx_token), local)
            return [], [], local

    @visitor.when(MethodCallNode)
    def visit(self, node, current_class, scope):
        _locals = []
        _body = []
        _params = []
        name_result = "x_"+str(self.local_count)
        self.local_count += 1
        local_result = LocalCIL(name_result)
        _locals.append(local_result)
        save_sh = 0

        for sh,exp in enumerate(node.exp):
            save_sh = save_sh+1
            name = "x_"+str(self.local_count)
            self.local_count += 1
            local = LocalCIL(name)
            local_exp, body_exp, value_exp = self.visit(exp, current_class, scope)
            _locals.append(local)
            _locals += local_exp
            _body += body_exp
            assign = AssignCIL(local, value_exp)
            _body.append(assign)
            p = ParamCIL(local,sh)
            _params.append(p)

        _params.append(ParamCIL(self.self_instance,save_sh))
        # _locals += _params
        expression = VCallCIL(current_class, node.method_id, len(_params))
        assign_result = AssignCIL(local_result, expression)
        _body += _params
        _body.append(assign_result)
        return _locals, _body, local_result

    @visitor.when(DotNode)
    def visit(self, node, current_class, scope):
        local_expression, body_expression, value_expression = self.visit(node.expression, current_class, scope)

        _locals = []
        _body = []
        _params = []
        name_result = "x_"+str(self.local_count)
        self.local_count += 1
        local_result = LocalCIL(name_result)
        _locals.append(local_result)

        _locals += local_expression
        _body += body_expression
        name_expr0 = "x_"+str(self.local_count)
        self.local_count += 1
        local_expr0 = LocalCIL(name_expr0)
        _locals.append(local_expr0)
        
        if node.expression.static_type in ["String","Int","Bool"]:
            l1, b1, v = self.__boxing(node.expression.static_type, value_expression)
            value_expression = v
            _locals += l1
            _body += b1

        expression = TypeofCIL(value_expression)
        assign_type = AssignCIL(local_expr0, expression)
        _body.append(assign_type)
        save_sh = 0

        for sh,exp in enumerate(node.exp):
            save_sh = save_sh+1
            name = "x_"+str(self.local_count)
            self.local_count += 1
            local = LocalCIL(name)
            local_exp, body_exp, value_exp = self.visit(exp, current_class, scope)
            _locals.append(local)
            _locals += local_exp
            _body += body_exp
            assign = AssignCIL(local, value_exp)
            _body.append(assign)
            _params.append(ParamCIL(local, sh))

        _params.append(ParamCIL(value_expression, save_sh)) # pasar la instancia (self)
        # _locals += _params
        if node.exp_type != None:
            expression = VCallCIL(node.exp_type, node.method_id, len(_params))
        else:
            expression = VCallCIL(local_expr0, node.method_id, len(_params))

        assign_result = AssignCIL(local_result, expression)
        _body += _params
        _body.append(assign_result)
        return _locals, _body, local_result

    @visitor.when(CaseNode)
    def visit(self, node, current_class, scope):
        local_expression, body_expression, value_expression = self.visit(node.exp, current_class, scope)

        _locals = []
        _body = []
        _typ_list = []
        label_list = []

        name_result_expr = "x_"+str(self.local_count)
        self.local_count += 1
        local_r = LocalCIL(name_result_expr)

        type_name = "x_"+str(self.local_count)
        self.local_count += 1
        local_type_name = LocalCIL(type_name)
            
        name_result = "x_"+str(self.local_count)
        self.local_count += 1
        local_result = LocalCIL(name_result)
        
        if node.exp.static_type in ["String","Int","Bool"]:
            l1, b1, v = self.__boxing(node.exp.static_type, value_expression)
            _locals += l1
            _body += b1
            typeof = TypeofCIL(v)
        else:
            typeof = TypeofCIL(value_expression)
        assign = AssignCIL(local_result, typeof)
        assign_tn = AssignCIL(local_type_name, TypeNameCIL(local_result))
        name_label3 = "LABEL" + str(self.label_count)
        self.label_count += 1
        goto3 = GotoCIL(name_label3)
        _locals.append(local_r)
        _locals.append(local_result)
        _locals.append(local_type_name)
        _locals += local_expression
        _body += body_expression
        _body.append(assign)
        _body.append(assign_tn)
        _body.append(goto3)
        name_label2 = "LABEL" + str(self.label_count)
        self.label_count += 1
        goto = GotoCIL(name_label2)
        final_assign = ""

        for nod in node.cases_list:
            name_label = "LABEL" + str(self.label_count)
            self.label_count += 1
            label_list.append(name_label)
            label = LabelCIL(name_label)
            _typ, l, b, v = self.visit(nod, value_expression, node.exp.static_type, node.static_type, current_class, scope)
            assig = AssignCIL(local_r, v)
            final_assign = assig
            _typ_list.append(_typ)
            _body.append(label)
            _locals += l
            _body += b
            _body.append(assig)
            _body.append(goto)

        label2 = LabelCIL(name_label2)
        case = CaseCIL(local_type_name, _typ_list, label_list)
        _body.append(LabelCIL(name_label3))
        _body.append(case)
        _body.append(label2)
        # _body.append(final_assign)

        return _locals, _body, local_r


    @visitor.when(Case)
    def visit(self, node, value_expression, expr0_type, type_of_case, current_class, scope):
        scope.new_scope(enviroment.ObjectEnviroment(current_class))
        scope.add(node.var_id, node.exp_type, self.local_count)
        self.local_count += 1
        local_id = scope.get_last_O().get_local(node.var_id)

        _locals = []
        _body = []

        if node.exp_type == "Object" and expr0_type in ["String","Int","Bool"]:
            l1, b1, v = self.__boxing(expr0_type, value_expression)
            value_expression = v
            _locals += l1
            _body += b1

        assign = AssignCIL(local_id, value_expression)

        l, b, v = self.visit(node.exp, current_class, scope)
        scope.end_scope()
        b = [assign] + b
        l.append(local_id)
        
        if type_of_case == "Object" and node.exp.static_type in ["String","Int","Bool"]:
            l1, b1, value = self.__boxing(node.exp.static_type, value_expression)
            v = value
            _locals += l1
            _body += b1

        _locals += l
        _body += b

        return node.exp_type, _locals, _body, v

    @visitor.when(LetInNode)
    def visit(self, node, current_class, scope):
        _locals = []
        _body = []

        scope.new_scope(enviroment.ObjectEnviroment(current_class))
        for declaration in node.declaration_list:
            local, body, value = self.visit(declaration, current_class, scope)
            _locals += local
            _body += body

        local_expr, body_expr, value_expr = self.visit(node.expr, current_class, scope)
        scope.end_scope()
        return _locals+local_expr, _body+body_expr, value_expr

    @visitor.when(DeclarationNode)
    def visit(self, node, current_class, scope):
        _locals = []
        _body = []
        value_expr = LocalCIL("")

        if node.expr != None:
            local_expr, body_expr, value_expr = self.visit(node.expr, current_class, scope)
            _locals += local_expr
            _body += body_expr

            if node.id_type == "Object" and node.expr.static_type in ["String","Int","Bool"]:
                l1, b1, v = self.__boxing(node.expr.static_type, value_expr)
                value_expr = v
                _locals += l1
                _body += b1

            scope.add(node.idx_token, node.id_type, self.local_count)
            local_id = scope.get_last_O().get_local(node.idx_token)
            assign = AssignCIL(local_id, value_expr)
            _body.append(assign)
        else:
            scope.add(node.idx_token, node.id_type, self.local_count)
            local_id = scope.get_last_O().get_local(node.idx_token)
            if node.id_type in ["Int", "Bool"]:
                assign = AssignCIL(local_id, IntegerCIL(0))
            elif node.id_type == "String":
                assign = AssignCIL(local_id, LoadCIL(self.empty_string))
            else:
                local_id = scope.get_last_O().get_local(node.idx_token)
                local = self.void
                assign = AssignCIL(local_id, local)
                _locals.append(local)
            _body.append(assign)

        self.local_count += 1
        local_id = scope.get_last_O().get_local(node.idx_token)
        _locals.append(local_id)

        return _locals, _body, value_expr
