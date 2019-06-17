class Main inherits IO {
   i:Int;

   main(): SELF_TYPE {
    {   -- y <- true;
        -- out_string(y.type_name());

        -- out_string(5@Object.type_name());

        -- out_string((if false then 5 else if true then "Hola" else true fi fi).type_name());
    
        (*out_int((let id1:Int <- 5, id2:Object <- "Hola", id3:Bool <- true in {
            id1;

            out_string("id2 : ");
            out_string(id2.type_name());
            out_string("\n");

            --out_string("id3 : ");
            
            new B;

            while id3 loop
                id3 <- false

            pool;

            id1 <- 22;
            --out_string(id3.type_name());
            --out_string("\n");
        }));*)

        (*out_int(if false then 5 
        else if false then 4 else 9 fi
        fi);*)
    
        (*out_string((case 5 of
            id1:IO => {
                out_string("Rama -> IO\n");
                --out_int(id1 + 4);
            };
            id2:Object => {
                out_string("Rama -> ");
                out_string(id2.type_name());
            };
        esac).type_name());*)

        -- out_int("Hola".length());

        (*out_string("Hola".concat(" Tuta\n").concat("Otro concat\n"));
        out_int("Hola".concat(" Tuta").length());
        out_string("\n");

        out_string("Hola soy tu Tuto".substr(0,8));
        out_string("\n");
        out_int("Hola soy tu Tuto".substr(0,8).length());
        out_string("\n");
        *)

        (*let id1:B <- (new B) in {
            out_int(id1.copy().return_x(10));
            out_string("\n");
            out_int(id1.print());
            out_string("\n");
        };*)

        --out_int((new B).return_x(9));

        let o:Object <- (new B), i:Int in
        {
            i <- case o of
                id1:B => 1;
                id2:Object =>2;
            esac;
            out_int(i);
        };
    }
   };
};

class B inherits IO {
   x:Int <- 5;
   return_x(y:Int):Int{
       get_x()
   };
   get_x():Int{
       x
   };
};

(*class A {
   x:Int <- 5;
   return_x():Int{
       x
   };
};

class Main inherits IO {
   -- y:Object <- (new B).algo();

   main(): SELF_TYPE {
	{
   	case new A of
   		id1:B => {
               out_string("Es un B.\n");
               out_int(id1.return_x());
               out_string("\n");
               };
   		id2:Object => {
               out_string("Es un Object.\n");
               out_string("Y no tiene methodo 'return_x()'.\n");
               out_string("\n");
               };
   	esac;

	out_string("Hello, World.\n");
   }
   };
};
*)