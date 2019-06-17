.data
temp_string: .space 1024
types_hierarchy: .word data_Object,data_Int,data_String,data_IO,data_Bool,data_Main
parent_indexes: .word 0 ,0 ,0 ,0 ,0 ,3
copy_: .asciiz "copy"
abort_: .asciiz "abort"
type_name_: .asciiz "type_name"
initialize_Object_: .asciiz "initialize_Object"
data_Object: .asciiz "Object"
Object_method: .word copy_,abort_,type_name_,initialize_Object_
Object: .word 4, Object_method, data_Object,Object_copy,Object_abort,Object_type_name,initialize_Object
initialize_Int_: .asciiz "initialize_Int"
data_Int: .asciiz "Int"
Int_method: .word copy_,abort_,type_name_,initialize_Int_
Int: .word 8, Int_method, data_Int,Object_copy,Object_abort,Object_type_name,initialize_Int
initialize_Bool_: .asciiz "initialize_Bool"
data_Bool: .asciiz "Bool"
Bool_method: .word copy_,abort_,type_name_,initialize_Bool_
Bool: .word 8, Bool_method, data_Bool,Object_copy,Object_abort,Object_type_name,initialize_Bool
out_string_: .asciiz "out_string"
out_int_: .asciiz "out_int"
in_string_: .asciiz "in_string"
in_int_: .asciiz "in_int"
initialize_IO_: .asciiz "initialize_IO"
data_IO: .asciiz "IO"
IO_method: .word copy_,abort_,type_name_,out_string_,out_int_,in_string_,in_int_,initialize_IO_
IO: .word 4, IO_method, data_IO,Object_copy,Object_abort,Object_type_name,IO_out_string,IO_out_int,IO_in_string,IO_in_int,initialize_IO
length_: .asciiz "length"
concat_: .asciiz "concat"
substr_: .asciiz "substr"
initialize_String_: .asciiz "initialize_String"
data_String: .asciiz "String"
String_method: .word copy_,abort_,type_name_,length_,concat_,substr_,initialize_String_
String: .word 8, String_method, data_String,Object_copy,Object_abort,Object_type_name,String_length,String_concat,String_substring,initialize_String
main_: .asciiz "main"
initialize_Main_: .asciiz "initialize_Main"
data_Main: .asciiz "Main"
Main_method: .word copy_,abort_,type_name_,out_string_,out_int_,in_string_,in_int_,initialize_IO_,main_,initialize_Main_
Main: .word 24, Main_method, data_Main,Object_copy,Object_abort,Object_type_name,IO_out_string,IO_out_int,IO_in_string,IO_in_int,initialize_IO,Main_main,initialize_Main
_vacio_ad: .word 0
_vacio: .asciiz ""
x_3_ad: .word 0
x_3: .asciiz "2 is trivially prime.
"
x_52_ad: .word 0
x_52: .asciiz " is prime.
"
x_60_ad: .word 0
x_60: .asciiz "continue"
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
Object_copy:
addi $sp, $sp, -4
lw $t1, isvoid
sw $t1, 0($sp)
addi $sp, $sp, -4
li $t1, 0
sw $t1, 0($sp)
addi $sp, $sp, -4
sw $ra, 0($sp)
lw $a0, 12($sp)
jal copy
move $t0, $a1
sw $t0, 4($sp)
lw $ra, ($sp)
addi $sp, $sp, 16
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
addi $sp, $sp, 12
jr $ra
Object_type_name:
addi $sp, $sp, -4
li $t1, 0
sw $t1, 0($sp)
addi $sp, $sp, -4
li $t1, 0
sw $t1, 0($sp)
addi $sp, $sp, -4
lw $t1, isvoid
sw $t1, 0($sp)
addi $sp, $sp, -4
sw $ra, 0($sp)
lw $t1, 16($sp)
lw $t0, ($t1)
sw $t0, 12($sp)
lw $t1, 12($sp)
addi $t0, $t1, 8
lw $t0, ($t0)
sw $t0, 8($sp)
lw $ra, ($sp)
addi $sp, $sp, 20
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
lw $t0, 8($sp)
sw $t0, 12($sp)
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
lw $t0, 8($sp)
sw $t0, 12($sp)
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
la $a0, temp_string
jal save_string_2
move $t0, $a1
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
lw $a0, 12($sp)
lw $a0, 4($a0)
jal lenght
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
lw $a0, 12($sp)
lw $a1, 16($sp)
lw $a0, 4($a0)
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
lw $a0, 20($sp)
lw $a1, 16($sp)
lw $a2, 12($sp)
lw $a2, 4($a2)
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
sw $ra, 0($sp)
li $t0, 0
sw $t0, 4($sp)
lw $ra, ($sp)
addi $sp, $sp, 16
jr $ra
initialize_Main:
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
lw $t0, x_3_ad
sw $t0, 240($sp)
lw $t0, 240($sp)
sw $t0, 244($sp)
lw $t1, 244($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 260($sp)
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
sw $t0, 248($sp)
li $t0, 2
sw $t0, 236($sp)
lw $t2, 236($sp)
lw $t1, 256($sp)
addi $t1, $t1, 4
sw $t2, ($t1)
lw $t1, 256($sp)
addi $t1, $t1, 4
lw $t0, ($t1)
sw $t0, 232($sp)
lw $t2, 232($sp)
lw $t1, 256($sp)
addi $t1, $t1, 8
sw $t2, ($t1)
lw $t2, 228($sp)
lw $t1, 256($sp)
addi $t1, $t1, 12
sw $t2, ($t1)
li $t0, 10000
sw $t0, 224($sp)
lw $t2, 224($sp)
lw $t1, 256($sp)
addi $t1, $t1, 16
sw $t2, ($t1)
LABEL10:
li $t0, 1
sw $t0, 220($sp)
lw $t0, 220($sp)
sw $t0, 8($sp)
lw $t1, 8($sp)
beq $t1, $zero, LABEL11
lw $t1, 256($sp)
addi $t1, $t1, 8
lw $t0, ($t1)
sw $t0, 216($sp)
li $t0, 1
sw $t0, 212($sp)
lw $t2, 216($sp)
lw $t3, 212($sp)
add $t0, $t2, $t3
sw $t0, 208($sp)
lw $t2, 208($sp)
lw $t1, 256($sp)
addi $t1, $t1, 8
sw $t2, ($t1)
lw $t1, 256($sp)
addi $t1, $t1, 8
lw $t0, ($t1)
sw $t0, 204($sp)
li $t0, 2
sw $t0, 200($sp)
lw $t2, 200($sp)
lw $t1, 256($sp)
addi $t1, $t1, 12
sw $t2, ($t1)
lw $t1, 256($sp)
addi $t1, $t1, 12
lw $t0, ($t1)
sw $t0, 196($sp)
LABEL4:
lw $t1, 256($sp)
addi $t1, $t1, 8
lw $t0, ($t1)
sw $t0, 192($sp)
lw $t1, 256($sp)
addi $t1, $t1, 12
lw $t0, ($t1)
sw $t0, 188($sp)
lw $t1, 256($sp)
addi $t1, $t1, 12
lw $t0, ($t1)
sw $t0, 184($sp)
lw $t2, 188($sp)
lw $t3, 184($sp)
mult $t2, $t3
mflo $t0
sw $t0, 180($sp)
lw $t2, 192($sp)
lw $t3, 180($sp)
blt $t2, $t3,less_than_0
li $t0, 0
j not_less_0
less_than_0:
li $t0, 1
not_less_0:
sw $t0, 176($sp)
lw $t0, 176($sp)
sw $t0, 120($sp)
lw $t1, 120($sp)
beq $t1, $zero, LABEL2
li $t0, 0
sw $t0, 172($sp)
lw $t0, 172($sp)
sw $t0, 120($sp)
j LABEL3
LABEL2:
lw $t1, 256($sp)
addi $t1, $t1, 8
lw $t0, ($t1)
sw $t0, 168($sp)
lw $t1, 256($sp)
addi $t1, $t1, 12
lw $t0, ($t1)
sw $t0, 164($sp)
lw $t1, 256($sp)
addi $t1, $t1, 8
lw $t0, ($t1)
sw $t0, 160($sp)
lw $t1, 256($sp)
addi $t1, $t1, 12
lw $t0, ($t1)
sw $t0, 156($sp)
lw $t2, 160($sp)
lw $t3, 156($sp)
div $t2, $t3
mflo $t0
sw $t0, 152($sp)
lw $t2, 164($sp)
lw $t3, 152($sp)
mult $t2, $t3
mflo $t0
sw $t0, 148($sp)
lw $t2, 168($sp)
lw $t3, 148($sp)
sub $t0, $t2, $t3
sw $t0, 144($sp)
li $t0, 0
sw $t0, 140($sp)
lw $t2, 144($sp)
lw $t3, 140($sp)
beq $t2, $t3, _equals2
li $t0,0
j _not_equals2
_equals2:
li $t0,1
_not_equals2:
sw $t0, 136($sp)
lw $t0, 136($sp)
sw $t0, 124($sp)
lw $t1, 124($sp)
beq $t1, $zero, LABEL0
li $t0, 0
sw $t0, 132($sp)
lw $t0, 132($sp)
sw $t0, 124($sp)
j LABEL1
LABEL0:
li $t0, 1
sw $t0, 128($sp)
lw $t0, 128($sp)
sw $t0, 124($sp)
LABEL1:
lw $t0, 124($sp)
sw $t0, 120($sp)
LABEL3:
lw $t0, 120($sp)
sw $t0, 100($sp)
lw $t1, 100($sp)
beq $t1, $zero, LABEL5
lw $t1, 256($sp)
addi $t1, $t1, 12
lw $t0, ($t1)
sw $t0, 116($sp)
li $t0, 1
sw $t0, 112($sp)
lw $t2, 116($sp)
lw $t3, 112($sp)
add $t0, $t2, $t3
sw $t0, 108($sp)
lw $t2, 108($sp)
lw $t1, 256($sp)
addi $t1, $t1, 12
sw $t2, ($t1)
lw $t1, 256($sp)
addi $t1, $t1, 12
lw $t0, ($t1)
sw $t0, 104($sp)
j LABEL4
LABEL5:
lw $t1, 256($sp)
addi $t1, $t1, 8
lw $t0, ($t1)
sw $t0, 96($sp)
lw $t1, 256($sp)
addi $t1, $t1, 12
lw $t0, ($t1)
sw $t0, 92($sp)
lw $t1, 256($sp)
addi $t1, $t1, 12
lw $t0, ($t1)
sw $t0, 88($sp)
lw $t2, 92($sp)
lw $t3, 88($sp)
mult $t2, $t3
mflo $t0
sw $t0, 84($sp)
lw $t2, 96($sp)
lw $t3, 84($sp)
blt $t2, $t3,less_than_2
li $t0, 0
j not_less_2
less_than_2:
li $t0, 1
not_less_2:
sw $t0, 80($sp)
lw $t0, 80($sp)
sw $t0, 40($sp)
lw $t1, 40($sp)
beq $t1, $zero, LABEL6
lw $t1, 256($sp)
addi $t1, $t1, 8
lw $t0, ($t1)
sw $t0, 76($sp)
lw $t2, 76($sp)
lw $t1, 256($sp)
addi $t1, $t1, 4
sw $t2, ($t1)
lw $t1, 256($sp)
addi $t1, $t1, 4
lw $t0, ($t1)
sw $t0, 72($sp)
lw $t1, 256($sp)
addi $t1, $t1, 4
lw $t0, ($t1)
sw $t0, 60($sp)
lw $t0, 60($sp)
sw $t0, 64($sp)
lw $t1, 64($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 260($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
la $t3, Main_method
la $s3, out_int_
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
sw $t0, 68($sp)
lw $t0, x_52_ad
sw $t0, 48($sp)
lw $t0, 48($sp)
sw $t0, 52($sp)
lw $t1, 52($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 260($sp)
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
sw $t0, 56($sp)
lw $t0, 56($sp)
sw $t0, 40($sp)
j LABEL7
LABEL6:
li $t0, 0
sw $t0, 44($sp)
lw $t0, 44($sp)
sw $t0, 40($sp)
LABEL7:
lw $t1, 256($sp)
addi $t1, $t1, 16
lw $t0, ($t1)
sw $t0, 36($sp)
lw $t1, 256($sp)
addi $t1, $t1, 8
lw $t0, ($t1)
sw $t0, 32($sp)
lw $t2, 36($sp)
lw $t3, 32($sp)
ble $t2, $t3, less_equals_than_3
li $t0, 0
j not_less_equals_3
less_equals_than_3:
li $t0, 1
not_less_equals_3:
sw $t0, 28($sp)
lw $t0, 28($sp)
sw $t0, 12($sp)
lw $t1, 12($sp)
beq $t1, $zero, LABEL8
lw $t1, 256($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
la $t3, Main_method
la $s3, abort_
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
sw $t0, 24($sp)
lw $t0, 24($sp)
sw $t0, 12($sp)
j LABEL9
LABEL8:
lw $t0, x_60_ad
sw $t0, 20($sp)
lw $a0, String
li $v0, 9
syscall
la $t1, String
move $t0, $v0
sw $t1, ($t0)
sw $t0, 16($sp)
lw $t2, 20($sp)
lw $t1, 16($sp)
addi $t1, $t1, 4
sw $t2, ($t1)
lw $t0, 16($sp)
sw $t0, 12($sp)
LABEL9:
j LABEL10
LABEL11:
lw $t2, 252($sp)
lw $t1, 256($sp)
addi $t1, $t1, 20
sw $t2, ($t1)
lw $t0, 256($sp)
sw $t0, 4($sp)
lw $ra, ($sp)
addi $sp, $sp, 260
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
la $a0, x_3
jal save_string
sw $a1, x_3_ad
la $a0, x_52
jal save_string
sw $a1, x_52_ad
la $a0, x_60
jal save_string
sw $a1, x_60_ad
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
copy:
move $t1, $a0
li $t2, 0
lw $t0, ($a0)
lw $a0, ($t0)
move $t6, $a0
li $t5, 4
mult	$a0, $t5			
mflo	$a0					
li $v0, 9
syscall
move $t5, $v0
move $a1, $v0
copy_loop:
lw $t3, ($t1)
sw $t3, ($t5)
addi $t2, $t2, 1
addi $t1, $t1, 4
addi $t5, $t5, 4
bne $t2, $t6, copy_loop
jal $ra
save_string_2:
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
save_string_loop_2:
lb $t1, ($t0)
li $t2 10
beq $t1, $t2, end_save_string_2
sb	$t1, 0($a2)
addi $t0, $t0, 1
addi $a2, $a2, 1
j save_string_loop_2
end_save_string_2:
move $a2, $a1
move $a1, $a3
jr $s7
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
add $a1,$a1,$a0
add $a3, $a2, $a1
add $a2, $a2, $a0
sub $a0, $a1, $a0
addi $a0, $a0, 1
li $v0, 9
syscall
move $a1, $v0
move $t2, $v0
beq $a2,$a3,sub_string_end
sub_string_loop:
lb $t0, ($a2)
sb $t0, ($t2)
addi $t2,$t2,1
addi $a2, $a2,1
bne $a2, $a3, sub_string_loop
sub_string_end:
jal $ra

