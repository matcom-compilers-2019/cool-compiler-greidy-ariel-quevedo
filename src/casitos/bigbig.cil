Types:
	Object{
		method copy:Object_copy
		method abort:Object_abort
		method type_name:Object_type_name
		method initialize_Object:initialize_Object
	}
	Int{
		attribute value
		method copy:Object_copy
		method abort:Object_abort
		method type_name:Object_type_name
		method initialize_Int:initialize_Int
	}
	Bool{
		attribute value
		method copy:Object_copy
		method abort:Object_abort
		method type_name:Object_type_name
		method initialize_Bool:initialize_Bool
	}
	IO{
		method copy:Object_copy
		method abort:Object_abort
		method type_name:Object_type_name
		method out_string:IO_out_string
		method out_int:IO_out_int
		method in_string:IO_in_string
		method in_int:IO_in_int
		method initialize_IO:initialize_IO
	}
	String{
		attribute value
		method copy:Object_copy
		method abort:Object_abort
		method type_name:Object_type_name
		method length:String_length
		method concat:String_concat
		method substr:String_substring
		method initialize_String:initialize_String
	}
	Bash{
		method copy:Object_copy
		method abort:Object_abort
		method type_name:Object_type_name
		method initialize_Object:initialize_Object
		method f:Bash_f
		method initialize_Bash:initialize_Bash
	}
	Main{
		method copy:Object_copy
		method abort:Object_abort
		method type_name:Object_type_name
		method out_string:IO_out_string
		method out_int:IO_out_int
		method in_string:IO_in_string
		method in_int:IO_in_int
		method initialize_IO:initialize_IO
		method main:Main_main
		method fib:Main_fib
		method initialize_Main:initialize_Main
	}
	Dash{
		method copy:Object_copy
		method abort:Object_abort
		method type_name:Object_type_name
		method initialize_Object:initialize_Object
		method f:Dash_f
		method initialize_Bash:initialize_Bash
		method initialize_Dash:initialize_Dash
	}
Data:
	_vacio=""
	x_3="Enter n to find nth fibonacci number!
"
	x_12="
"
Code:
	initialize_Object{
		Arg instance
	}
	initialize_Int{
		Arg instance
	}
	initialize_Bool{
		Arg instance
	}
	initialize_IO{
		Arg instance
	}
	initialize_String{
		Arg instance
	}
	Object_copy{
		Arg to_copy
		Local isvoid
		Local save_copy
		save_copy = Copy to_copy
	}
	Object_abort{
		Arg self_Object
		Local isvoid
		halt
	}
	Object_type_name{
		Arg self_Object
		Local name
		Local type_name_ref
		Local isvoid
		name = Typeof self_Object
		type_name_ref = Type_Name name
	}
	IO_out_string{
		Arg out_string
		Arg self_IO
		Local isvoid
		Print out_string
		out_string = self_IO
	}
	IO_out_int{
		Arg out_int
		Arg self_IO
		Local isvoid
		Print out_int
		out_int = self_IO
	}
	IO_in_string{
		Arg self_IO
		Local isvoid
		Local x_in_string
		x_in_string = Read
	}
	IO_in_int{
		Arg self_IO
		Local x_in_int
		Local isvoid
		x_in_int = Read
	}
	String_length{
		Arg x_str
		Local x_str_length
		Local isvoid
		x_str_length = Length x_str
	}
	String_concat{
		Arg self_String
		Arg x_str1
		Local x_str_concat
		Local isvoid
		x_str_concat = Concat x_str1 self_String
	}
	String_substring{
		Arg self_String
		Arg x_j
		Arg x_i
		Local x_sub_str
		Local isvoid
		x_sub_str = Substring self_String x_j x_i
	}
	Bash_f{
		Arg self_Bash
		Local isvoid
		Local x_0
		x_0 = 1
	}
	initialize_Bash{
		Arg self_Bash
		Local isvoid
		Local return
		return = self_Bash
	}
	Main_main{
		Arg self_Main
		Local isvoid
		Local x_1
		Local x_2
		Local x_4
		Local x_5
		Local x_6
		Local x_7
		Local x_8
		Local x_9
		Local x_10
		Local x_11
		Local x_13
		x_4 = Load x_3 -> Enter n to find nth fibonacci number!

		x_2 = x_4
		Param x_2 0
		Param self_Main 1
		x_1 = VCall Main out_string
		Param self_Main 0
		x_9 = VCall Main in_int
		x_8 = x_9
		Param x_8 0
		Param self_Main 1
		x_7 = VCall Main fib
		x_6 = x_7
		Param x_6 0
		Param self_Main 1
		x_5 = VCall Main out_int
		x_13 = Load x_12 -> 

		x_11 = x_13
		Param x_11 0
		Param self_Main 1
		x_10 = VCall Main out_string
	}
	Main_fib{
		Arg x__14
		Arg self_Main
		Local isvoid
		Local x_15
		Local x__16
		Local x_17
		Local x__18
		Local x_19
		Local x__20
		Local x_21
		Local x_22
		Local x__23
		Local x_24
		Local x_25
		Local x__26
		Local x_27
		Local x__20
		Local x_29
		Local x_30
		Local x__14
		Local x__18
		Local x_33
		Local x_34
		Local x_35
		Local x__16
		Local x_37
		x_15 = 1
		x__16 = x_15
		x_17 = 0
		x__18 = x_17
		x_19 = 0
		x__20 = x_19
		x_21 = Allocate Dash
		Param x_21 0
		x_22 = Call initialize_Dash
		x__23 = x_21
		x_24 = Allocate Dash
		Param x_24 0
		x_25 = Call initialize_Dash
		x__26 = x_24
		LABEL0:
		x_37 = x__14
		If x_37 Goto LABEL1
		x_27 = x__16 + x__18
		x__20 = x_27
		x_29 = 1
		x_30 = x__14 - x_29
		x__14 = x_30
		x__18 = x__16
		x_34 = Typeof x__23
		Param x__23 0
		x_33 = VCall Bash f
		x_35 = x__20 + x_33
		x__16 = x_35
		Goto LABEL0
		LABEL1:
	}
	initialize_Main{
		Arg self_Main
		Local isvoid
		Local return
		return = self_Main
	}
	Dash_f{
		Arg self_Dash
		Local isvoid
		Local x_38
		x_38 = 2
	}
	initialize_Dash{
		Arg self_Dash
		Local isvoid
		Local return
		return = self_Dash
	}
	main{
		Local x_40
		Local x_41
		Local x_39
		x_40 = Allocate Main
		Param x_40 0
		x_39 = Call initialize_Main
		Param x_40 0
		x_41 = Call Main_main
		halt
	}
