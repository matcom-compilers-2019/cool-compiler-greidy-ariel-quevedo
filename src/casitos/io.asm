.data
temp_string: .space 1024
types_hierarchy: .word data_Object,data_Int,data_String,data_IO,data_Bool,data_A,data_B,data_C,data_D,data_Main
parent_indexes: .word 0 ,0 ,0 ,0 ,0 ,0 ,5 ,3 ,7 ,3
abort_: .asciiz "abort"
type_name_: .asciiz "type_name"
initialize_Object_: .asciiz "initialize_Object"
data_Object: .asciiz "Object"
Object_method: .word abort_,type_name_,initialize_Object_
Object: .word 4, Object_method, Object_abort,Object_type_name,initialize_Object
initialize_Int_: .asciiz "initialize_Int"
data_Int: .asciiz "Int"
Int_method: .word abort_,type_name_,initialize_Int_
Int: .word 4, Int_method, Object_abort,Object_type_name,initialize_Int
initialize_Bool_: .asciiz "initialize_Bool"
data_Bool: .asciiz "Bool"
Bool_method: .word abort_,type_name_,initialize_Bool_
Bool: .word 4, Bool_method, Object_abort,Object_type_name,initialize_Bool
out_string_: .asciiz "out_string"
out_int_: .asciiz "out_int"
in_string_: .asciiz "in_string"
in_int_: .asciiz "in_int"
initialize_IO_: .asciiz "initialize_IO"
data_IO: .asciiz "IO"
IO_method: .word abort_,type_name_,out_string_,out_int_,in_string_,in_int_,initialize_IO_
IO: .word 4, IO_method, Object_abort,Object_type_name,IO_out_string,IO_out_int,IO_in_string,IO_in_int,initialize_IO
length_: .asciiz "length"
concat_: .asciiz "concat"
substring_: .asciiz "substring"
initialize_String_: .asciiz "initialize_String"
data_String: .asciiz "String"
String_method: .word abort_,type_name_,length_,concat_,substring_,initialize_String_
String: .word 4, String_method, Object_abort,Object_type_name,String_length,String_concat,String_substring,initialize_String
out_a_: .asciiz "out_a"
initialize_A_: .asciiz "initialize_A"
data_A: .asciiz "A"
A_method: .word abort_,type_name_,initialize_Object_,out_a_,initialize_A_
A: .word 8, A_method, Object_abort,Object_type_name,initialize_Object,A_out_a,initialize_A
out_b_: .asciiz "out_b"
initialize_B_: .asciiz "initialize_B"
data_B: .asciiz "B"
B_method: .word abort_,type_name_,initialize_Object_,out_a_,initialize_A_,out_b_,initialize_B_
B: .word 8, B_method, Object_abort,Object_type_name,initialize_Object,A_out_a,initialize_A,B_out_b,initialize_B
out_c_: .asciiz "out_c"
initialize_C_: .asciiz "initialize_C"
data_C: .asciiz "C"
C_method: .word abort_,type_name_,out_string_,out_int_,in_string_,in_int_,initialize_IO_,out_c_,initialize_C_
C: .word 4, C_method, Object_abort,Object_type_name,IO_out_string,IO_out_int,IO_in_string,IO_in_int,initialize_IO,C_out_c,initialize_C
out_d_: .asciiz "out_d"
initialize_D_: .asciiz "initialize_D"
data_D: .asciiz "D"
D_method: .word abort_,type_name_,out_string_,out_int_,in_string_,in_int_,initialize_IO_,out_c_,initialize_C_,out_d_,initialize_D_
D: .word 4, D_method, Object_abort,Object_type_name,IO_out_string,IO_out_int,IO_in_string,IO_in_int,initialize_IO,C_out_c,initialize_C,D_out_d,initialize_D
main_: .asciiz "main"
initialize_Main_: .asciiz "initialize_Main"
data_Main: .asciiz "Main"
Main_method: .word abort_,type_name_,out_string_,out_int_,in_string_,in_int_,initialize_IO_,main_,initialize_Main_
Main: .word 4, Main_method, Object_abort,Object_type_name,IO_out_string,IO_out_int,IO_in_string,IO_in_int,initialize_IO,Main_main,initialize_Main
_vacio_ad: .word 0
_vacio: .asciiz "vacio"
s_object_ad: .word 0
s_object: .asciiz "Object"
x_6_ad: .word 0
x_6: .asciiz "A: Hello world
"
x_12_ad: .word 0
x_12: .asciiz "B: Hello world
"
x_17_ad: .word 0
x_17: .asciiz "C: Hello world
"
x_21_ad: .word 0
x_21: .asciiz "D: Hello world
"
x_41_ad: .word 0
x_41: .asciiz "Done.
"
isvoid: .word 0

.text
.globl main
initialize_Object:
addi $sp, $sp, -4
sw $ra, 0($sp)
lw $ra, ($sp)
addi $sp, $sp, 8
jr $ra
initialize_Int:
addi $sp, $sp, -4
sw $ra, 0($sp)
lw $ra, ($sp)
addi $sp, $sp, 8
jr $ra
initialize_Bool:
addi $sp, $sp, -4
sw $ra, 0($sp)
lw $ra, ($sp)
addi $sp, $sp, 8
jr $ra
initialize_IO:
addi $sp, $sp, -4
sw $ra, 0($sp)
lw $ra, ($sp)
addi $sp, $sp, 8
jr $ra
initialize_String:
addi $sp, $sp, -4
sw $ra, 0($sp)
lw $ra, ($sp)
addi $sp, $sp, 8
jr $ra
Object_abort:
addi $sp, $sp, -4
lw $t1, isvoid
sw $t1, 0($sp)
addi $sp, $sp, -4
sw $ra, 0($sp)
li $v0, 10
syscall
lw $ra, ($sp)
addi $sp, $sp, 8
jr $ra
Object_type_name:
addi $sp, $sp, -4
li $t1, 0
sw $t1, 0($sp)
addi $sp, $sp, -4
lw $t1, isvoid
sw $t1, 0($sp)
addi $sp, $sp, -4
sw $ra, 0($sp)
lw $t0, s_object_ad
sw $t0, 8($sp)
lw $ra, ($sp)
addi $sp, $sp, 12
jr $ra
IO_out_string:
addi $sp, $sp, -4
lw $t1, isvoid
sw $t1, 0($sp)
addi $sp, $sp, -4
sw $ra, 0($sp)
lw $a0, 12($sp)
li $v0, 4
syscall
lw $ra, ($sp)
addi $sp, $sp, 16
jr $ra
IO_out_int:
addi $sp, $sp, -4
lw $t1, isvoid
sw $t1, 0($sp)
addi $sp, $sp, -4
sw $ra, 0($sp)
lw $a0, 12($sp)
li $v0, 1
syscall
lw $ra, ($sp)
addi $sp, $sp, 16
jr $ra
IO_in_string:
addi $sp, $sp, -4
lw $t1, isvoid
sw $t1, 0($sp)
addi $sp, $sp, -4
li $t1, 0
sw $t1, 0($sp)
addi $sp, $sp, -4
sw $ra, 0($sp)
li $v0, 8
la $a0, temp_string
li $a1, 1024
syscall
move $t0, $v0
sw $t0, 4($sp)
lw $ra, ($sp)
addi $sp, $sp, 16
jr $ra
IO_in_int:
addi $sp, $sp, -4
li $t1, 0
sw $t1, 0($sp)
addi $sp, $sp, -4
lw $t1, isvoid
sw $t1, 0($sp)
addi $sp, $sp, -4
sw $ra, 0($sp)
li $v0, 5
syscall
move $t0, $v0
sw $t0, 8($sp)
lw $ra, ($sp)
addi $sp, $sp, 16
jr $ra
String_length:
addi $sp, $sp, -4
li $t1, 0
sw $t1, 0($sp)
addi $sp, $sp, -4
lw $t1, isvoid
sw $t1, 0($sp)
addi $sp, $sp, -4
sw $ra, 0($sp)
la $a0, 12($sp)
jal length
move $t0, $a1
sw $t0, 8($sp)
lw $ra, ($sp)
addi $sp, $sp, 16
jr $ra
String_concat:
addi $sp, $sp, -4
li $t1, 0
sw $t1, 0($sp)
addi $sp, $sp, -4
lw $t1, isvoid
sw $t1, 0($sp)
addi $sp, $sp, -4
sw $ra, 0($sp)
la $a0, 12($sp)
la $a1, 16($sp)
jal concat_string
move $t0, $a1
sw $t0, 8($sp)
lw $ra, ($sp)
addi $sp, $sp, 20
jr $ra
String_substring:
addi $sp, $sp, -4
li $t1, 0
sw $t1, 0($sp)
addi $sp, $sp, -4
lw $t1, isvoid
sw $t1, 0($sp)
addi $sp, $sp, -4
sw $ra, 0($sp)
lw $a0, 12($sp)
lw $a1, 16($sp)
la $a3, 20($sp)
jal sub_string
move $t0, $a1
sw $t0, 8($sp)
lw $ra, ($sp)
addi $sp, $sp, 24
jr $ra
A_out_a:
addi $sp, $sp, -4
lw $t1, isvoid
sw $t1, 0($sp)
addi $sp, $sp, -4
li $t1, 0
sw $t1, 0($sp)
addi $sp, $sp, -4
li $t1, 0
sw $t1, 0($sp)
addi $sp, $sp, -4
li $t1, 0
sw $t1, 0($sp)
addi $sp, $sp, -4
li $t1, 0
sw $t1, 0($sp)
addi $sp, $sp, -4
li $t1, 0
sw $t1, 0($sp)
addi $sp, $sp, -4
sw $ra, 0($sp)
lw $t1, 28($sp)
addi $t1, $t1, 4
lw $t0, ($t1)
sw $t0, 16($sp)
lw $t1, 16($sp)
lw $t0, ($t1)
sw $t0, 12($sp)
lw $t0, x_6_ad
sw $t0, 4($sp)
lw $t0, 4($sp)
sw $t0, 8($sp)
lw $t1, 8($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 20($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 20($sp)
addi $t3, $t1, 4
lw $t3, ($t3)
la $s3, out_string_
li $s1, 1000
jal find
addi $t0, $t2, 2
lw $t1, 20($sp)
li $a0,4
mult $t0, $a0
mflo $t0
add $t1, $t1, $t0
lw $t2, ($t1)
jal $t2
sw $t0, 20($sp)
lw $ra, ($sp)
addi $sp, $sp, 32
jr $ra
initialize_A:
addi $sp, $sp, -4
lw $t1, isvoid
sw $t1, 0($sp)
addi $sp, $sp, -4
li $t1, 0
sw $t1, 0($sp)
addi $sp, $sp, -4
li $t1, 0
sw $t1, 0($sp)
addi $sp, $sp, -4
li $t1, 0
sw $t1, 0($sp)
addi $sp, $sp, -4
sw $ra, 0($sp)
lw $a0, IO
li $v0, 9
syscall
la $t1, IO
move $t0, $v0
sw $t1, ($t0)
sw $t0, 12($sp)
lw $t1, 12($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
jal initialize_IO
sw $t0, 8($sp)
lw $t2, 12($sp)
lw $t1, 20($sp)
addi $t1, $t1, 4
sw $t2, ($t1)
lw $t0, 20($sp)
sw $t0, 4($sp)
lw $ra, ($sp)
addi $sp, $sp, 24
jr $ra
B_out_b:
addi $sp, $sp, -4
lw $t1, isvoid
sw $t1, 0($sp)
addi $sp, $sp, -4
li $t1, 0
sw $t1, 0($sp)
addi $sp, $sp, -4
li $t1, 0
sw $t1, 0($sp)
addi $sp, $sp, -4
li $t1, 0
sw $t1, 0($sp)
addi $sp, $sp, -4
li $t1, 0
sw $t1, 0($sp)
addi $sp, $sp, -4
li $t1, 0
sw $t1, 0($sp)
addi $sp, $sp, -4
sw $ra, 0($sp)
lw $t1, 28($sp)
addi $t1, $t1, 4
lw $t0, ($t1)
sw $t0, 16($sp)
lw $t1, 16($sp)
lw $t0, ($t1)
sw $t0, 12($sp)
lw $t0, x_12_ad
sw $t0, 4($sp)
lw $t0, 4($sp)
sw $t0, 8($sp)
lw $t1, 8($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 20($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 20($sp)
addi $t3, $t1, 4
lw $t3, ($t3)
la $s3, out_string_
li $s1, 1000
jal find
addi $t0, $t2, 2
lw $t1, 20($sp)
li $a0,4
mult $t0, $a0
mflo $t0
add $t1, $t1, $t0
lw $t2, ($t1)
jal $t2
sw $t0, 20($sp)
lw $ra, ($sp)
addi $sp, $sp, 32
jr $ra
initialize_B:
addi $sp, $sp, -4
lw $t1, isvoid
sw $t1, 0($sp)
addi $sp, $sp, -4
li $t1, 0
sw $t1, 0($sp)
addi $sp, $sp, -4
li $t1, 0
sw $t1, 0($sp)
addi $sp, $sp, -4
sw $ra, 0($sp)
lw $t1, 16($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
jal initialize_A
sw $t0, 4($sp)
lw $t0, 16($sp)
sw $t0, 8($sp)
lw $ra, ($sp)
addi $sp, $sp, 20
jr $ra
C_out_c:
addi $sp, $sp, -4
lw $t1, isvoid
sw $t1, 0($sp)
addi $sp, $sp, -4
li $t1, 0
sw $t1, 0($sp)
addi $sp, $sp, -4
li $t1, 0
sw $t1, 0($sp)
addi $sp, $sp, -4
li $t1, 0
sw $t1, 0($sp)
addi $sp, $sp, -4
sw $ra, 0($sp)
lw $t0, x_17_ad
sw $t0, 4($sp)
lw $t0, 4($sp)
sw $t0, 8($sp)
lw $t1, 8($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 24($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
la $t3, C_method
la $s3, out_string_
li $s1, 1000
jal find
addi $t0, $t2, 2
la $t1, C
li $a0,4
mult $t0, $a0
mflo $t0
add $t1, $t1, $t0
lw $t2, ($t1)
jal $t2
sw $t0, 12($sp)
lw $ra, ($sp)
addi $sp, $sp, 24
jr $ra
initialize_C:
addi $sp, $sp, -4
lw $t1, isvoid
sw $t1, 0($sp)
addi $sp, $sp, -4
li $t1, 0
sw $t1, 0($sp)
addi $sp, $sp, -4
sw $ra, 0($sp)
lw $t0, 12($sp)
sw $t0, 4($sp)
lw $ra, ($sp)
addi $sp, $sp, 16
jr $ra
D_out_d:
addi $sp, $sp, -4
lw $t1, isvoid
sw $t1, 0($sp)
addi $sp, $sp, -4
li $t1, 0
sw $t1, 0($sp)
addi $sp, $sp, -4
li $t1, 0
sw $t1, 0($sp)
addi $sp, $sp, -4
li $t1, 0
sw $t1, 0($sp)
addi $sp, $sp, -4
sw $ra, 0($sp)
lw $t0, x_21_ad
sw $t0, 4($sp)
lw $t0, 4($sp)
sw $t0, 8($sp)
lw $t1, 8($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 24($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
la $t3, D_method
la $s3, out_string_
li $s1, 1000
jal find
addi $t0, $t2, 2
la $t1, D
li $a0,4
mult $t0, $a0
mflo $t0
add $t1, $t1, $t0
lw $t2, ($t1)
jal $t2
sw $t0, 12($sp)
lw $ra, ($sp)
addi $sp, $sp, 24
jr $ra
initialize_D:
addi $sp, $sp, -4
lw $t1, isvoid
sw $t1, 0($sp)
addi $sp, $sp, -4
li $t1, 0
sw $t1, 0($sp)
addi $sp, $sp, -4
sw $ra, 0($sp)
lw $t0, 12($sp)
sw $t0, 4($sp)
lw $ra, ($sp)
addi $sp, $sp, 16
jr $ra
Main_main:
addi $sp, $sp, -4
lw $t1, isvoid
sw $t1, 0($sp)
addi $sp, $sp, -4
li $t1, 0
sw $t1, 0($sp)
addi $sp, $sp, -4
li $t1, 0
sw $t1, 0($sp)
addi $sp, $sp, -4
li $t1, 0
sw $t1, 0($sp)
addi $sp, $sp, -4
li $t1, 0
sw $t1, 0($sp)
addi $sp, $sp, -4
li $t1, 0
sw $t1, 0($sp)
addi $sp, $sp, -4
li $t1, 0
sw $t1, 0($sp)
addi $sp, $sp, -4
li $t1, 0
sw $t1, 0($sp)
addi $sp, $sp, -4
li $t1, 0
sw $t1, 0($sp)
addi $sp, $sp, -4
li $t1, 0
sw $t1, 0($sp)
addi $sp, $sp, -4
li $t1, 0
sw $t1, 0($sp)
addi $sp, $sp, -4
li $t1, 0
sw $t1, 0($sp)
addi $sp, $sp, -4
li $t1, 0
sw $t1, 0($sp)
addi $sp, $sp, -4
li $t1, 0
sw $t1, 0($sp)
addi $sp, $sp, -4
li $t1, 0
sw $t1, 0($sp)
addi $sp, $sp, -4
li $t1, 0
sw $t1, 0($sp)
addi $sp, $sp, -4
li $t1, 0
sw $t1, 0($sp)
addi $sp, $sp, -4
li $t1, 0
sw $t1, 0($sp)
addi $sp, $sp, -4
li $t1, 0
sw $t1, 0($sp)
addi $sp, $sp, -4
li $t1, 0
sw $t1, 0($sp)
addi $sp, $sp, -4
sw $ra, 0($sp)
lw $a0, A
li $v0, 9
syscall
la $t1, A
move $t0, $v0
sw $t1, ($t0)
sw $t0, 72($sp)
lw $t1, 72($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
jal initialize_A
sw $t0, 68($sp)
lw $t1, 72($sp)
lw $t0, ($t1)
sw $t0, 64($sp)
lw $t1, 72($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 68($sp)
addi $t3, $t1, 4
lw $t3, ($t3)
la $s3, out_a_
li $s1, 1000
jal find
addi $t0, $t2, 2
lw $t1, 68($sp)
li $a0,4
mult $t0, $a0
mflo $t0
add $t1, $t1, $t0
lw $t2, ($t1)
jal $t2
sw $t0, 76($sp)
lw $a0, B
li $v0, 9
syscall
la $t1, B
move $t0, $v0
sw $t1, ($t0)
sw $t0, 56($sp)
lw $t1, 56($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
jal initialize_B
sw $t0, 52($sp)
lw $t1, 56($sp)
lw $t0, ($t1)
sw $t0, 48($sp)
lw $t1, 56($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 52($sp)
addi $t3, $t1, 4
lw $t3, ($t3)
la $s3, out_b_
li $s1, 1000
jal find
addi $t0, $t2, 2
lw $t1, 52($sp)
li $a0,4
mult $t0, $a0
mflo $t0
add $t1, $t1, $t0
lw $t2, ($t1)
jal $t2
sw $t0, 60($sp)
lw $a0, C
li $v0, 9
syscall
la $t1, C
move $t0, $v0
sw $t1, ($t0)
sw $t0, 40($sp)
lw $t1, 40($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
jal initialize_C
sw $t0, 36($sp)
lw $t1, 40($sp)
lw $t0, ($t1)
sw $t0, 32($sp)
lw $t1, 40($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 36($sp)
addi $t3, $t1, 4
lw $t3, ($t3)
la $s3, out_c_
li $s1, 1000
jal find
addi $t0, $t2, 2
lw $t1, 36($sp)
li $a0,4
mult $t0, $a0
mflo $t0
add $t1, $t1, $t0
lw $t2, ($t1)
jal $t2
sw $t0, 44($sp)
lw $a0, D
li $v0, 9
syscall
la $t1, D
move $t0, $v0
sw $t1, ($t0)
sw $t0, 24($sp)
lw $t1, 24($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
jal initialize_D
sw $t0, 20($sp)
lw $t1, 24($sp)
lw $t0, ($t1)
sw $t0, 16($sp)
lw $t1, 24($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 20($sp)
addi $t3, $t1, 4
lw $t3, ($t3)
la $s3, out_d_
li $s1, 1000
jal find
addi $t0, $t2, 2
lw $t1, 20($sp)
li $a0,4
mult $t0, $a0
mflo $t0
add $t1, $t1, $t0
lw $t2, ($t1)
jal $t2
sw $t0, 28($sp)
lw $t0, x_41_ad
sw $t0, 4($sp)
lw $t0, 4($sp)
sw $t0, 8($sp)
lw $t1, 8($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 88($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
la $t3, Main_method
la $s3, out_string_
li $s1, 1000
jal find
addi $t0, $t2, 2
la $t1, Main
li $a0,4
mult $t0, $a0
mflo $t0
add $t1, $t1, $t0
lw $t2, ($t1)
jal $t2
sw $t0, 12($sp)
lw $ra, ($sp)
addi $sp, $sp, 88
jr $ra
initialize_Main:
addi $sp, $sp, -4
lw $t1, isvoid
sw $t1, 0($sp)
addi $sp, $sp, -4
li $t1, 0
sw $t1, 0($sp)
addi $sp, $sp, -4
sw $ra, 0($sp)
lw $t0, 12($sp)
sw $t0, 4($sp)
lw $ra, ($sp)
addi $sp, $sp, 16
jr $ra
main:
addi $sp, $sp, -4
li $t1, 0
sw $t1, 0($sp)
addi $sp, $sp, -4
li $t1, 0
sw $t1, 0($sp)
addi $sp, $sp, -4
li $t1, 0
sw $t1, 0($sp)
addi $sp, $sp, -4
sw $ra, 0($sp)
li $a0, 1
li $v0, 9
syscall
sw $v0, isvoid($zero)
la $a0, _vacio
jal save_string
sw $a1, _vacio_ad
la $a0, s_object
jal save_string
sw $a1, s_object_ad
la $a0, x_6
jal save_string
sw $a1, x_6_ad
la $a0, x_12
jal save_string
sw $a1, x_12_ad
la $a0, x_17
jal save_string
sw $a1, x_17_ad
la $a0, x_21
jal save_string
sw $a1, x_21_ad
la $a0, x_41
jal save_string
sw $a1, x_41_ad
lw $a0, Main
li $v0, 9
syscall
la $t1, Main
move $t0, $v0
sw $t1, ($t0)
sw $t0, 12($sp)
lw $t1, 12($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
jal initialize_Main
sw $t0, 4($sp)
lw $t1, 12($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
jal Main_main
sw $t0, 8($sp)
li $v0, 10
syscall
lw $ra, ($sp)
addi $sp, $sp, 16
jr $ra
find:
move $s4, $ra
move $s5, $s3
move $a1, $t3
li $t2, 0 
find_loop:
li $a0, 4
mult	$t2, $a0
mflo	$a0
add $t3, $a1, $a0
move $s3, $s5
lw $s2, 0($t3)
jal cmploop
addi $t2, $t2, 1
beq $t2, $s1, end_not
beq $a0, $0, find_loop
end:
addi $t2, $t2, -1
li $s3, 1
jr $s4
end_not: 
li $a3, 1
li $s3, 0
beq $a0, $a3, end 
jr $s4
cmploop:
lb $t4,($s2)
lb $t3,($s3)
bne $t4,$t3,cmpne
beq $t4,$zero,cmpeq
addi $s2,$s2,1
addi $s3,$s3,1
j cmploop
cmpne:
li $a0,0
jr $ra
cmpeq:
li $a0,1
jr $ra
lenght:
move $t1, $zero
lenght_loop:
lb $t0, ($a0)
beq $t0, $zero, end_lenght
addi $t1,$t1,1
addi $a0,$a0,1
j lenght_loop
end_lenght:
move $a1, $t1
jr $ra
save_string:
move $s7, $ra
move $s6, $a0
jal lenght
addi $a1,$a1,1
move $a0, $a1
li $v0, 9
syscall
move $a2, $v0
move $a3, $v0
move $t0, $s6
save_string_loop:
lb $t1, ($t0)
beq $t1, $0, end_save_string
sb	$t1, 0($a2)
addi $t0, $t0, 1
addi $a2, $a2, 1
j save_string_loop
end_save_string:
move $a2, $a1
move $a1, $a3
jr $s7
concat_string:
move $s7, $ra
move $s6, $a0
move $s5, $a1
jal lenght
move $a3, $a1
move $a0, $s5
jal lenght
add $a3, $a3, $a1
addi $a3,$a3,1
move $a0, $a3
li $v0, 9
syscall
move $s4, $v0
move $s3, $v0
move $t0, $0
move $t2, $s6
concat_string_loop:
lb $t1, ($t2)
beq $t1, $0, step_concat
sb $t1, ($s4)
addi $t2, $t2 , 1
addi $s4, $s4, 1
j concat_string_loop
step_concat:
addi $t0, 1
li $t4, 2
move $t2, $s5
bne $t4, $t0, concat_string_loop
end_concat:
move $a1, $s3
jr $s7
sub_string:
add $a3, $a2, $a1
add $a2, $a2, $a0
sub $a0, $a1, $a0
addi $a0, $a0, 1
li $v0, 9
syscall
move $a1, $v0
move $t2, $v0
sub_string_loop:
lb $t0, ($a2)
sw $t0, ($t2)
addi $t2,$t2,1
addi $a2, $a2,1
bne $a2, $a3, sub_string_loop
jal $ra

