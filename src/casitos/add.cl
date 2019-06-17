class Main inherits IO {
    y: Int<-3;
    tmp: String<-"Hola";
    add(x: Int, y: Int, z:Int): Int {
    {
        x+y+z;
    } 
};
    main(): Object{
        {
            out_int(add(4, 3,4));
            --1@IO.out_int(y);
            --1@IO.out_string(tmp);
            out_int(y);
            out_string(tmp);
        }
    };
    
};
