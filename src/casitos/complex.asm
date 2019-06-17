.data
temp_string: .space 1024
types_hierarchy: .word data_Object,data_Int,data_String,data_IO,data_Bool,data_Main,data_Complex
parent_indexes: .word 0 ,0 ,0 ,0 ,0 ,3 ,3
abort_: .asciiz "abort"
type_name_: .asciiz "type_name"
initialize_Object_: .asciiz "initialize_Object"
data_Object: .asciiz "Object"
Object_method: .word abort_,type_name_,initialize_Object_
Object: .word 4, Object_method, data_Object,Object_abort,Object_type_name,initialize_Object
initialize_Int_: .asciiz "initialize_Int"
data_Int: .asciiz "Int"
Int_method: .word abort_,type_name_,initialize_Int_
Int: .word 4, Int_method, data_Int,Object_abort,Object_type_name,initialize_Int
initialize_Bool_: .asciiz "initialize_Bool"
data_Bool: .asciiz "Bool"
Bool_method: .word abort_,type_name_,initialize_Bool_
Bool: .word 4, Bool_method, data_Bool,Object_abort,Object_type_name,initialize_Bool
out_string_: .asciiz "out_string"
out_int_: .asciiz "out_int"
in_string_: .asciiz "in_string"
in_int_: .asciiz "in_int"
initialize_IO_: .asciiz "initialize_IO"
data_IO: .asciiz "IO"
IO_method: .word abort_,type_name_,out_string_,out_int_,in_string_,in_int_,initialize_IO_
IO: .word 4, IO_method, data_IO,Object_abort,Object_type_name,IO_out_string,IO_out_int,IO_in_string,IO_in_int,initialize_IO
length_: .asciiz "length"
concat_: .asciiz "concat"
substring_: .asciiz "substring"
initialize_String_: .asciiz "initialize_String"
data_String: .asciiz "String"
String_method: .word abort_,type_name_,length_,concat_,substring_,initialize_String_
String: .word 4, String_method, data_String,Object_abort,Object_type_name,String_length,String_concat,String_substring,initialize_String
main_: .asciiz "main"
initialize_Main_: .asciiz "initialize_Main"
data_Main: .asciiz "Main"
Main_method: .word abort_,type_name_,out_string_,out_int_,in_string_,in_int_,initialize_IO_,main_,initialize_Main_
Main: .word 4, Main_method, data_Main,Object_abort,Object_type_name,IO_out_string,IO_out_int,IO_in_string,IO_in_int,initialize_IO,Main_main,initialize_Main
init_: .asciiz "init"
print_: .asciiz "print"
reflect_0_: .asciiz "reflect_0"
reflect_X_: .asciiz "reflect_X"
reflect_Y_: .asciiz "reflect_Y"
initialize_Complex_: .asciiz "initialize_Complex"
data_Complex: .asciiz "Complex"
Complex_method: .word abort_,type_name_,out_string_,out_int_,in_string_,in_int_,initialize_IO_,init_,print_,reflect_0_,reflect_X_,reflect_Y_,initialize_Complex_
Complex: .word 12, Complex_method, data_Complex,Object_abort,Object_type_name,IO_out_string,IO_out_int,IO_in_string,IO_in_int,initialize_IO,Complex_init,Complex_print,Complex_reflect_0,Complex_reflect_X,Complex_reflect_Y,initialize_Complex
_vacio_ad: .word 0
_vacio: .asciiz "vacio"
s_object_ad: .word 0
s_object: .asciiz "Object"
x_18_ad: .word 0
x_18: .asciiz "=)
"
x_22_ad: .word 0
x_22: .asciiz "=(
"
x_46_ad: .word 0
x_46: .asciiz "+"
x_55_ad: .word 0
x_55: .asciiz "I"
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
lw $a0, Complex
li $v0, 9
syscall
la $t1, Complex
move $t0, $v0
sw $t1, ($t0)
sw $t0, 88($sp)
lw $t1, 88($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
jal initialize_Complex
sw $t0, 84($sp)
lw $t1, 88($sp)
lw $t0, ($t1)
sw $t0, 80($sp)
li $t0, 1
sw $t0, 72($sp)
lw $t0, 72($sp)
sw $t0, 76($sp)
li $t0, 1
sw $t0, 64($sp)
lw $t0, 64($sp)
sw $t0, 68($sp)
lw $t1, 76($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 72($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 96($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 92($sp)
addi $t3, $t1, 4
lw $t3, ($t3)
la $s3, init_
li $s1, 1000
jal find
addi $t0, $t2, 3
lw $t1, 92($sp)
li $a0,4
mult $t0, $a0
mflo $t0
add $t1, $t1, $t0
lw $t2, ($t1)
jal $t2
sw $t0, 92($sp)
lw $t0, 92($sp)
sw $t0, 60($sp)
lw $t1, 60($sp)
lw $t0, ($t1)
sw $t0, 48($sp)
lw $t1, 60($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 52($sp)
addi $t3, $t1, 4
lw $t3, ($t3)
la $s3, reflect_X_
li $s1, 1000
jal find
addi $t0, $t2, 3
lw $t1, 52($sp)
li $a0,4
mult $t0, $a0
mflo $t0
add $t1, $t1, $t0
lw $t2, ($t1)
jal $t2
sw $t0, 52($sp)
lw $t1, 52($sp)
lw $t0, ($t1)
sw $t0, 44($sp)
lw $t1, 52($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 48($sp)
addi $t3, $t1, 4
lw $t3, ($t3)
la $s3, reflect_Y_
li $s1, 1000
jal find
addi $t0, $t2, 3
lw $t1, 48($sp)
li $a0,4
mult $t0, $a0
mflo $t0
add $t1, $t1, $t0
lw $t2, ($t1)
jal $t2
sw $t0, 56($sp)
lw $t1, 60($sp)
lw $t0, ($t1)
sw $t0, 36($sp)
lw $t1, 60($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 40($sp)
addi $t3, $t1, 4
lw $t3, ($t3)
la $s3, reflect_0_
li $s1, 1000
jal find
addi $t0, $t2, 3
lw $t1, 40($sp)
li $a0,4
mult $t0, $a0
mflo $t0
add $t1, $t1, $t0
lw $t2, ($t1)
jal $t2
sw $t0, 40($sp)
lw $t2, 56($sp)
lw $t3, 40($sp)
beq $t2, $t3, _equals1
li $t0,0
j _not_equals1
_equals1:
li $t0,1
_not_equals1:
sw $t0, 32($sp)
lw $t0, 32($sp)
sw $t0, 4($sp)
lw $t1, 4($sp)
beq $t1, $zero, LABEL0
lw $t0, x_18_ad
sw $t0, 20($sp)
lw $t0, 20($sp)
sw $t0, 24($sp)
lw $t1, 24($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 104($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
la $t3, Main_method
la $s3, out_string_
li $s1, 1000
jal find
addi $t0, $t2, 3
la $t1, Main
li $a0,4
mult $t0, $a0
mflo $t0
add $t1, $t1, $t0
lw $t2, ($t1)
jal $t2
sw $t0, 28($sp)
lw $t0, 28($sp)
sw $t0, 4($sp)
j LABEL1
LABEL0:
lw $t0, x_22_ad
sw $t0, 8($sp)
lw $t0, 8($sp)
sw $t0, 12($sp)
lw $t1, 12($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 104($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
la $t3, Main_method
la $s3, out_string_
li $s1, 1000
jal find
addi $t0, $t2, 3
la $t1, Main
li $a0,4
mult $t0, $a0
mflo $t0
add $t1, $t1, $t0
lw $t2, ($t1)
jal $t2
sw $t0, 16($sp)
lw $t0, 16($sp)
sw $t0, 4($sp)
LABEL1:
lw $ra, ($sp)
addi $sp, $sp, 104
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
Complex_init:
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
sw $t0, 20($sp)
lw $t2, 20($sp)
lw $t3, 36($sp)
beq $t2, $t3, _equals2
li $t0,0
j _not_equals2
_equals2:
li $t0,1
_not_equals2:
sw $t0, 16($sp)
lw $t1, 28($sp)
addi $t1, $t1, 8
lw $t0, ($t1)
sw $t0, 12($sp)
lw $t2, 12($sp)
lw $t3, 32($sp)
beq $t2, $t3, _equals3
li $t0,0
j _not_equals3
_equals3:
li $t0,1
_not_equals3:
sw $t0, 8($sp)
lw $t0, 28($sp)
sw $t0, 4($sp)
lw $ra, ($sp)
addi $sp, $sp, 40
jr $ra
Complex_print:
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
lw $t1, 96($sp)
addi $t1, $t1, 8
lw $t0, ($t1)
sw $t0, 88($sp)
li $t0, 0
sw $t0, 84($sp)
lw $t2, 88($sp)
lw $t3, 84($sp)
beq $t2, $t3, _equals4
li $t0,0
j _not_equals4
_equals4:
li $t0,1
_not_equals4:
sw $t0, 80($sp)
lw $t0, 80($sp)
sw $t0, 4($sp)
lw $t1, 4($sp)
beq $t1, $zero, LABEL2
lw $t1, 96($sp)
addi $t1, $t1, 4
lw $t0, ($t1)
sw $t0, 68($sp)
lw $t0, 68($sp)
sw $t0, 72($sp)
lw $t1, 72($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 100($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
la $t3, Complex_method
la $s3, out_int_
li $s1, 1000
jal find
addi $t0, $t2, 3
la $t1, Complex
li $a0,4
mult $t0, $a0
mflo $t0
add $t1, $t1, $t0
lw $t2, ($t1)
jal $t2
sw $t0, 76($sp)
lw $t0, 76($sp)
sw $t0, 4($sp)
j LABEL3
LABEL2:
lw $t1, 96($sp)
addi $t1, $t1, 4
lw $t0, ($t1)
sw $t0, 44($sp)
lw $t0, 44($sp)
sw $t0, 48($sp)
lw $t1, 48($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 100($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
la $t3, Complex_method
la $s3, out_int_
li $s1, 1000
jal find
addi $t0, $t2, 3
la $t1, Complex
li $a0,4
mult $t0, $a0
mflo $t0
add $t1, $t1, $t0
lw $t2, ($t1)
jal $t2
sw $t0, 52($sp)
lw $t1, 52($sp)
lw $t0, ($t1)
sw $t0, 40($sp)
lw $t0, x_46_ad
sw $t0, 32($sp)
lw $t0, 32($sp)
sw $t0, 36($sp)
lw $t1, 36($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 56($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 48($sp)
addi $t3, $t1, 4
lw $t3, ($t3)
la $s3, out_string_
li $s1, 1000
jal find
addi $t0, $t2, 3
lw $t1, 48($sp)
li $a0,4
mult $t0, $a0
mflo $t0
add $t1, $t1, $t0
lw $t2, ($t1)
jal $t2
sw $t0, 56($sp)
lw $t1, 56($sp)
lw $t0, ($t1)
sw $t0, 28($sp)
lw $t1, 96($sp)
addi $t1, $t1, 8
lw $t0, ($t1)
sw $t0, 20($sp)
lw $t0, 20($sp)
sw $t0, 24($sp)
lw $t1, 24($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 60($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 36($sp)
addi $t3, $t1, 4
lw $t3, ($t3)
la $s3, out_int_
li $s1, 1000
jal find
addi $t0, $t2, 3
lw $t1, 36($sp)
li $a0,4
mult $t0, $a0
mflo $t0
add $t1, $t1, $t0
lw $t2, ($t1)
jal $t2
sw $t0, 60($sp)
lw $t1, 60($sp)
lw $t0, ($t1)
sw $t0, 16($sp)
lw $t0, x_55_ad
sw $t0, 8($sp)
lw $t0, 8($sp)
sw $t0, 12($sp)
lw $t1, 12($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 64($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 24($sp)
addi $t3, $t1, 4
lw $t3, ($t3)
la $s3, out_string_
li $s1, 1000
jal find
addi $t0, $t2, 3
lw $t1, 24($sp)
li $a0,4
mult $t0, $a0
mflo $t0
add $t1, $t1, $t0
lw $t2, ($t1)
jal $t2
sw $t0, 64($sp)
lw $t0, 64($sp)
sw $t0, 4($sp)
LABEL3:
lw $ra, ($sp)
addi $sp, $sp, 100
jr $ra
Complex_reflect_0:
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
sw $ra, 0($sp)
lw $t1, 52($sp)
addi $t1, $t1, 4
lw $t0, ($t1)
sw $t0, 44($sp)
lw $t1, 52($sp)
addi $t1, $t1, 4
lw $t0, ($t1)
sw $t0, 40($sp)
li $t0, 0
sw $t0, 36($sp)
lw $t2, 36($sp)
lw $t3, 40($sp)
sub $t0, $t2, $t3
sw $t0, 32($sp)
lw $t2, 44($sp)
lw $t3, 32($sp)
beq $t2, $t3, _equals5
li $t0,0
j _not_equals5
_equals5:
li $t0,1
_not_equals5:
sw $t0, 28($sp)
lw $t1, 52($sp)
addi $t1, $t1, 8
lw $t0, ($t1)
sw $t0, 24($sp)
lw $t1, 52($sp)
addi $t1, $t1, 8
lw $t0, ($t1)
sw $t0, 20($sp)
li $t0, 0
sw $t0, 16($sp)
lw $t2, 16($sp)
lw $t3, 20($sp)
sub $t0, $t2, $t3
sw $t0, 12($sp)
lw $t2, 24($sp)
lw $t3, 12($sp)
beq $t2, $t3, _equals6
li $t0,0
j _not_equals6
_equals6:
li $t0,1
_not_equals6:
sw $t0, 8($sp)
lw $t0, 52($sp)
sw $t0, 4($sp)
lw $ra, ($sp)
addi $sp, $sp, 56
jr $ra
Complex_reflect_X:
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
sw $ra, 0($sp)
lw $t1, 32($sp)
addi $t1, $t1, 8
lw $t0, ($t1)
sw $t0, 24($sp)
lw $t1, 32($sp)
addi $t1, $t1, 8
lw $t0, ($t1)
sw $t0, 20($sp)
li $t0, 0
sw $t0, 16($sp)
lw $t2, 16($sp)
lw $t3, 20($sp)
sub $t0, $t2, $t3
sw $t0, 12($sp)
lw $t2, 24($sp)
lw $t3, 12($sp)
beq $t2, $t3, _equals7
li $t0,0
j _not_equals7
_equals7:
li $t0,1
_not_equals7:
sw $t0, 8($sp)
lw $t0, 32($sp)
sw $t0, 4($sp)
lw $ra, ($sp)
addi $sp, $sp, 36
jr $ra
Complex_reflect_Y:
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
sw $ra, 0($sp)
lw $t1, 32($sp)
addi $t1, $t1, 4
lw $t0, ($t1)
sw $t0, 24($sp)
lw $t1, 32($sp)
addi $t1, $t1, 4
lw $t0, ($t1)
sw $t0, 20($sp)
li $t0, 0
sw $t0, 16($sp)
lw $t2, 16($sp)
lw $t3, 20($sp)
sub $t0, $t2, $t3
sw $t0, 12($sp)
lw $t2, 24($sp)
lw $t3, 12($sp)
beq $t2, $t3, _equals8
li $t0,0
j _not_equals8
_equals8:
li $t0,1
_not_equals8:
sw $t0, 8($sp)
lw $t0, 32($sp)
sw $t0, 4($sp)
lw $ra, ($sp)
addi $sp, $sp, 36
jr $ra
initialize_Complex:
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
lw $t2, 12($sp)
lw $t1, 20($sp)
addi $t1, $t1, 4
sw $t2, ($t1)
lw $t2, 8($sp)
lw $t1, 20($sp)
addi $t1, $t1, 8
sw $t2, ($t1)
lw $t0, 20($sp)
sw $t0, 4($sp)
lw $ra, ($sp)
addi $sp, $sp, 24
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
la $a0, x_18
jal save_string
sw $a1, x_18_ad
la $a0, x_22
jal save_string
sw $a1, x_22_ad
la $a0, x_46
jal save_string
sw $a1, x_46_ad
la $a0, x_55
jal save_string
sw $a1, x_55_ad
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

