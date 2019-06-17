class Main inherits IO {
	x:String;
    main() : SELF_TYPE {
	{
	    out_string((new Object).type_name().substr(4,1));
	    out_string((isvoid self).type_name().substr(1,3));
	    out_string("\n");
		if (isvoid x) then
			out_string("while entalla")
		else
			out_string(x)
		fi;
	}
    };
};
