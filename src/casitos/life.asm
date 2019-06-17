.data
temp_string: .space 1024
types_hierarchy: .word data_Object,data_Int,data_String,data_IO,data_Bool,data_Board,data_CellularAutomaton,data_Main
parent_indexes: .word 0 ,0 ,0 ,0 ,0 ,3 ,5 ,6
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
size_of_board_: .asciiz "size_of_board"
board_init_: .asciiz "board_init"
initialize_Board_: .asciiz "initialize_Board"
data_Board: .asciiz "Board"
Board_method: .word copy_,abort_,type_name_,out_string_,out_int_,in_string_,in_int_,initialize_IO_,size_of_board_,board_init_,initialize_Board_
Board: .word 16, Board_method, data_Board,Object_copy,Object_abort,Object_type_name,IO_out_string,IO_out_int,IO_in_string,IO_in_int,initialize_IO,Board_size_of_board,Board_board_init,initialize_Board
init_: .asciiz "init"
print_: .asciiz "print"
num_cells_: .asciiz "num_cells"
cell_: .asciiz "cell"
north_: .asciiz "north"
south_: .asciiz "south"
east_: .asciiz "east"
west_: .asciiz "west"
northwest_: .asciiz "northwest"
northeast_: .asciiz "northeast"
southeast_: .asciiz "southeast"
southwest_: .asciiz "southwest"
neighbors_: .asciiz "neighbors"
cell_at_next_evolution_: .asciiz "cell_at_next_evolution"
evolve_: .asciiz "evolve"
option_: .asciiz "option"
prompt_: .asciiz "prompt"
prompt2_: .asciiz "prompt2"
initialize_CellularAutomaton_: .asciiz "initialize_CellularAutomaton"
data_CellularAutomaton: .asciiz "CellularAutomaton"
CellularAutomaton_method: .word copy_,abort_,type_name_,out_string_,out_int_,in_string_,in_int_,initialize_IO_,size_of_board_,board_init_,initialize_Board_,init_,print_,num_cells_,cell_,north_,south_,east_,west_,northwest_,northeast_,southeast_,southwest_,neighbors_,cell_at_next_evolution_,evolve_,option_,prompt_,prompt2_,initialize_CellularAutomaton_
CellularAutomaton: .word 20, CellularAutomaton_method, data_CellularAutomaton,Object_copy,Object_abort,Object_type_name,IO_out_string,IO_out_int,IO_in_string,IO_in_int,initialize_IO,Board_size_of_board,Board_board_init,initialize_Board,CellularAutomaton_init,CellularAutomaton_print,CellularAutomaton_num_cells,CellularAutomaton_cell,CellularAutomaton_north,CellularAutomaton_south,CellularAutomaton_east,CellularAutomaton_west,CellularAutomaton_northwest,CellularAutomaton_northeast,CellularAutomaton_southeast,CellularAutomaton_southwest,CellularAutomaton_neighbors,CellularAutomaton_cell_at_next_evolution,CellularAutomaton_evolve,CellularAutomaton_option,CellularAutomaton_prompt,CellularAutomaton_prompt2,initialize_CellularAutomaton
main_: .asciiz "main"
initialize_Main_: .asciiz "initialize_Main"
data_Main: .asciiz "Main"
Main_method: .word copy_,abort_,type_name_,out_string_,out_int_,in_string_,in_int_,initialize_IO_,size_of_board_,board_init_,initialize_Board_,init_,print_,num_cells_,cell_,north_,south_,east_,west_,northwest_,northeast_,southeast_,southwest_,neighbors_,cell_at_next_evolution_,evolve_,option_,prompt_,prompt2_,initialize_CellularAutomaton_,main_,initialize_Main_
Main: .word 24, Main_method, data_Main,Object_copy,Object_abort,Object_type_name,IO_out_string,IO_out_int,IO_in_string,IO_in_int,initialize_IO,Board_size_of_board,Board_board_init,initialize_Board,CellularAutomaton_init,CellularAutomaton_print,CellularAutomaton_num_cells,CellularAutomaton_cell,CellularAutomaton_north,CellularAutomaton_south,CellularAutomaton_east,CellularAutomaton_west,CellularAutomaton_northwest,CellularAutomaton_northeast,CellularAutomaton_southeast,CellularAutomaton_southwest,CellularAutomaton_neighbors,CellularAutomaton_cell_at_next_evolution,CellularAutomaton_evolve,CellularAutomaton_option,CellularAutomaton_prompt,CellularAutomaton_prompt2,initialize_CellularAutomaton,Main_main,initialize_Main
_vacio_ad: .word 0
_vacio: .asciiz "vacio"
x_76_ad: .word 0
x_76: .asciiz "
"
x_90_ad: .word 0
x_90: .asciiz "
"
x_98_ad: .word 0
x_98: .asciiz "
"
x_110_ad: .word 0
x_110: .asciiz " "
x_125_ad: .word 0
x_125: .asciiz " "
x_137_ad: .word 0
x_137: .asciiz " "
x_154_ad: .word 0
x_154: .asciiz " "
x_164_ad: .word 0
x_164: .asciiz " "
x_171_ad: .word 0
x_171: .asciiz " "
x_184_ad: .word 0
x_184: .asciiz " "
x_191_ad: .word 0
x_191: .asciiz " "
x_204_ad: .word 0
x_204: .asciiz " "
x_215_ad: .word 0
x_215: .asciiz " "
x_228_ad: .word 0
x_228: .asciiz " "
x_239_ad: .word 0
x_239: .asciiz " "
x_252_ad: .word 0
x_252: .asciiz " "
x_259_ad: .word 0
x_259: .asciiz " "
x_270_ad: .word 0
x_270: .asciiz "X"
x_278_ad: .word 0
x_278: .asciiz "X"
x_287_ad: .word 0
x_287: .asciiz "X"
x_296_ad: .word 0
x_296: .asciiz "X"
x_305_ad: .word 0
x_305: .asciiz "X"
x_314_ad: .word 0
x_314: .asciiz "X"
x_323_ad: .word 0
x_323: .asciiz "X"
x_332_ad: .word 0
x_332: .asciiz "X"
x_344_ad: .word 0
x_344: .asciiz "X"
x_352_ad: .word 0
x_352: .asciiz "X"
x_355_ad: .word 0
x_355: .asciiz "X"
x_357_ad: .word 0
x_357: .asciiz "-"
x_360_ad: .word 0
x_360: .asciiz "-"
x_386_ad: .word 0
x_386: .asciiz "
Please chose a number:
"
x_390_ad: .word 0
x_390: .asciiz "	1: A cross
"
x_394_ad: .word 0
x_394: .asciiz "	2: A slash from the upper left to lower right
"
x_398_ad: .word 0
x_398: .asciiz "	3: A slash from the upper right to lower left
"
x_402_ad: .word 0
x_402: .asciiz "	4: An X
"
x_406_ad: .word 0
x_406: .asciiz "	5: A greater than sign 
"
x_410_ad: .word 0
x_410: .asciiz "	6: A less than sign
"
x_414_ad: .word 0
x_414: .asciiz "	7: Two greater than signs
"
x_418_ad: .word 0
x_418: .asciiz "	8: Two less than signs
"
x_422_ad: .word 0
x_422: .asciiz "	9: A 'V'
"
x_426_ad: .word 0
x_426: .asciiz "	10: An inverse 'V'
"
x_430_ad: .word 0
x_430: .asciiz "	11: Numbers 9 and 10 combined
"
x_434_ad: .word 0
x_434: .asciiz "	12: A full grid
"
x_438_ad: .word 0
x_438: .asciiz "	13: A 'T'
"
x_442_ad: .word 0
x_442: .asciiz "	14: A plus '+'
"
x_446_ad: .word 0
x_446: .asciiz "	15: A 'W'
"
x_450_ad: .word 0
x_450: .asciiz "	16: An 'M'
"
x_454_ad: .word 0
x_454: .asciiz "	17: An 'E'
"
x_458_ad: .word 0
x_458: .asciiz "	18: A '3'
"
x_462_ad: .word 0
x_462: .asciiz "	19: An 'O'
"
x_466_ad: .word 0
x_466: .asciiz "	20: An '8'
"
x_470_ad: .word 0
x_470: .asciiz "	21: An 'S'
"
x_474_ad: .word 0
x_474: .asciiz "Your choice => "
x_480_ad: .word 0
x_480: .asciiz "
"
x_484_ad: .word 0
x_484: .asciiz " XX  XXXX XXXX  XX  "
x_488_ad: .word 0
x_488: .asciiz "    X   X   X   X   X    "
x_492_ad: .word 0
x_492: .asciiz "X     X     X     X     X"
x_496_ad: .word 0
x_496: .asciiz "X   X X X   X   X X X   X"
x_500_ad: .word 0
x_500: .asciiz "X     X     X   X   X    "
x_504_ad: .word 0
x_504: .asciiz "    X   X   X     X     X"
x_508_ad: .word 0
x_508: .asciiz "X  X  X  XX  X      "
x_512_ad: .word 0
x_512: .asciiz " X  XX  X  X  X     "
x_516_ad: .word 0
x_516: .asciiz "X   X X X   X  "
x_520_ad: .word 0
x_520: .asciiz "  X   X X X   X"
x_524_ad: .word 0
x_524: .asciiz "X X X X X X X X"
x_528_ad: .word 0
x_528: .asciiz "XXXXXXXXXXXXXXXXXXXXXXXXX"
x_532_ad: .word 0
x_532: .asciiz "XXXXX  X    X    X    X  "
x_536_ad: .word 0
x_536: .asciiz "  X    X  XXXXX  X    X  "
x_540_ad: .word 0
x_540: .asciiz "X     X X X X   X X  "
x_544_ad: .word 0
x_544: .asciiz "  X X   X X X X     X"
x_548_ad: .word 0
x_548: .asciiz "XXXXX   X   XXXXX   X   XXXX"
x_552_ad: .word 0
x_552: .asciiz "XXX    X   X  X    X   XXXX "
x_556_ad: .word 0
x_556: .asciiz " XX X  XX  X XX "
x_560_ad: .word 0
x_560: .asciiz " XX X  XX  X XX X  XX  X XX "
x_564_ad: .word 0
x_564: .asciiz " XXXX   X    XX    X   XXXX "
x_566_ad: .word 0
x_566: .asciiz "                         "
x_592_ad: .word 0
x_592: .asciiz "Would you like to continue with the next generation? 
"
x_596_ad: .word 0
x_596: .asciiz "Please use lowercase y or n for your answer [y]: "
x_602_ad: .word 0
x_602: .asciiz "
"
x_604_ad: .word 0
x_604: .asciiz "n"
x_613_ad: .word 0
x_613: .asciiz "

"
x_617_ad: .word 0
x_617: .asciiz "Would you like to choose a background pattern? 
"
x_621_ad: .word 0
x_621: .asciiz "Please use lowercase y or n for your answer [n]: "
x_625_ad: .word 0
x_625: .asciiz "y"
x_636_ad: .word 0
x_636: .asciiz "Welcome to the Game of Life.
"
x_640_ad: .word 0
x_640: .asciiz "There are many initial states to choose from. 
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
Board_size_of_board:
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
lw $a0, String
li $v0, 9
syscall
la $t1, String
move $t0, $v0
sw $t1, ($t0)
sw $t0, 4($sp)
lw $t2, 24($sp)
lw $t1, 4($sp)
addi $t1, $t1, 4
sw $t2, ($t1)
lw $t1, 4($sp)
lw $t0, ($t1)
sw $t0, 8($sp)
lw $t1, 4($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 12($sp)
addi $t3, $t1, 4
lw $t3, ($t3)
la $s3, length_
li $s1, 1000
jal find
addi $t0, $t2, 3
lw $t1, 12($sp)
li $a0,4
mult $t0, $a0
mflo $t0
add $t1, $t1, $t0
lw $t2, ($t1)
jal $t2
sw $t0, 12($sp)
lw $ra, ($sp)
addi $sp, $sp, 28
jr $ra
Board_board_init:
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
sw $ra, 0($sp)
lw $t0, 240($sp)
sw $t0, 224($sp)
lw $t1, 224($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 240($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
la $t3, Board_method
la $s3, size_of_board_
li $s1, 1000
jal find
addi $t0, $t2, 3
la $t1, Board
li $a0,4
mult $t0, $a0
mflo $t0
add $t1, $t1, $t0
lw $t2, ($t1)
jal $t2
sw $t0, 228($sp)
lw $t0, 228($sp)
sw $t0, 220($sp)
li $t0, 15
sw $t0, 216($sp)
lw $t2, 220($sp)
lw $t3, 216($sp)
beq $t2, $t3, _equals1
li $t0,0
j _not_equals1
_equals1:
li $t0,1
_not_equals1:
sw $t0, 212($sp)
lw $t0, 212($sp)
sw $t0, 8($sp)
lw $t1, 8($sp)
beq $t1, $zero, LABEL10
li $t0, 3
sw $t0, 208($sp)
lw $t2, 208($sp)
lw $t1, 236($sp)
addi $t1, $t1, 4
sw $t2, ($t1)
lw $t1, 236($sp)
addi $t1, $t1, 4
lw $t0, ($t1)
sw $t0, 204($sp)
li $t0, 5
sw $t0, 200($sp)
lw $t2, 200($sp)
lw $t1, 236($sp)
addi $t1, $t1, 8
sw $t2, ($t1)
lw $t1, 236($sp)
addi $t1, $t1, 8
lw $t0, ($t1)
sw $t0, 196($sp)
lw $t2, 220($sp)
lw $t1, 236($sp)
addi $t1, $t1, 12
sw $t2, ($t1)
lw $t1, 236($sp)
addi $t1, $t1, 12
lw $t0, ($t1)
sw $t0, 192($sp)
lw $t0, 192($sp)
sw $t0, 8($sp)
j LABEL11
LABEL10:
li $t0, 16
sw $t0, 188($sp)
lw $t2, 220($sp)
lw $t3, 188($sp)
beq $t2, $t3, _equals2
li $t0,0
j _not_equals2
_equals2:
li $t0,1
_not_equals2:
sw $t0, 184($sp)
lw $t0, 184($sp)
sw $t0, 12($sp)
lw $t1, 12($sp)
beq $t1, $zero, LABEL8
li $t0, 4
sw $t0, 180($sp)
lw $t2, 180($sp)
lw $t1, 236($sp)
addi $t1, $t1, 4
sw $t2, ($t1)
lw $t1, 236($sp)
addi $t1, $t1, 4
lw $t0, ($t1)
sw $t0, 176($sp)
li $t0, 4
sw $t0, 172($sp)
lw $t2, 172($sp)
lw $t1, 236($sp)
addi $t1, $t1, 8
sw $t2, ($t1)
lw $t1, 236($sp)
addi $t1, $t1, 8
lw $t0, ($t1)
sw $t0, 168($sp)
lw $t2, 220($sp)
lw $t1, 236($sp)
addi $t1, $t1, 12
sw $t2, ($t1)
lw $t1, 236($sp)
addi $t1, $t1, 12
lw $t0, ($t1)
sw $t0, 164($sp)
lw $t0, 164($sp)
sw $t0, 12($sp)
j LABEL9
LABEL8:
li $t0, 20
sw $t0, 160($sp)
lw $t2, 220($sp)
lw $t3, 160($sp)
beq $t2, $t3, _equals3
li $t0,0
j _not_equals3
_equals3:
li $t0,1
_not_equals3:
sw $t0, 156($sp)
lw $t0, 156($sp)
sw $t0, 16($sp)
lw $t1, 16($sp)
beq $t1, $zero, LABEL6
li $t0, 4
sw $t0, 152($sp)
lw $t2, 152($sp)
lw $t1, 236($sp)
addi $t1, $t1, 4
sw $t2, ($t1)
lw $t1, 236($sp)
addi $t1, $t1, 4
lw $t0, ($t1)
sw $t0, 148($sp)
li $t0, 5
sw $t0, 144($sp)
lw $t2, 144($sp)
lw $t1, 236($sp)
addi $t1, $t1, 8
sw $t2, ($t1)
lw $t1, 236($sp)
addi $t1, $t1, 8
lw $t0, ($t1)
sw $t0, 140($sp)
lw $t2, 220($sp)
lw $t1, 236($sp)
addi $t1, $t1, 12
sw $t2, ($t1)
lw $t1, 236($sp)
addi $t1, $t1, 12
lw $t0, ($t1)
sw $t0, 136($sp)
lw $t0, 136($sp)
sw $t0, 16($sp)
j LABEL7
LABEL6:
li $t0, 21
sw $t0, 132($sp)
lw $t2, 220($sp)
lw $t3, 132($sp)
beq $t2, $t3, _equals4
li $t0,0
j _not_equals4
_equals4:
li $t0,1
_not_equals4:
sw $t0, 128($sp)
lw $t0, 128($sp)
sw $t0, 20($sp)
lw $t1, 20($sp)
beq $t1, $zero, LABEL4
li $t0, 3
sw $t0, 124($sp)
lw $t2, 124($sp)
lw $t1, 236($sp)
addi $t1, $t1, 4
sw $t2, ($t1)
lw $t1, 236($sp)
addi $t1, $t1, 4
lw $t0, ($t1)
sw $t0, 120($sp)
li $t0, 7
sw $t0, 116($sp)
lw $t2, 116($sp)
lw $t1, 236($sp)
addi $t1, $t1, 8
sw $t2, ($t1)
lw $t1, 236($sp)
addi $t1, $t1, 8
lw $t0, ($t1)
sw $t0, 112($sp)
lw $t2, 220($sp)
lw $t1, 236($sp)
addi $t1, $t1, 12
sw $t2, ($t1)
lw $t1, 236($sp)
addi $t1, $t1, 12
lw $t0, ($t1)
sw $t0, 108($sp)
lw $t0, 108($sp)
sw $t0, 20($sp)
j LABEL5
LABEL4:
li $t0, 25
sw $t0, 104($sp)
lw $t2, 220($sp)
lw $t3, 104($sp)
beq $t2, $t3, _equals5
li $t0,0
j _not_equals5
_equals5:
li $t0,1
_not_equals5:
sw $t0, 100($sp)
lw $t0, 100($sp)
sw $t0, 24($sp)
lw $t1, 24($sp)
beq $t1, $zero, LABEL2
li $t0, 5
sw $t0, 96($sp)
lw $t2, 96($sp)
lw $t1, 236($sp)
addi $t1, $t1, 4
sw $t2, ($t1)
lw $t1, 236($sp)
addi $t1, $t1, 4
lw $t0, ($t1)
sw $t0, 92($sp)
li $t0, 5
sw $t0, 88($sp)
lw $t2, 88($sp)
lw $t1, 236($sp)
addi $t1, $t1, 8
sw $t2, ($t1)
lw $t1, 236($sp)
addi $t1, $t1, 8
lw $t0, ($t1)
sw $t0, 84($sp)
lw $t2, 220($sp)
lw $t1, 236($sp)
addi $t1, $t1, 12
sw $t2, ($t1)
lw $t1, 236($sp)
addi $t1, $t1, 12
lw $t0, ($t1)
sw $t0, 80($sp)
lw $t0, 80($sp)
sw $t0, 24($sp)
j LABEL3
LABEL2:
li $t0, 28
sw $t0, 76($sp)
lw $t2, 220($sp)
lw $t3, 76($sp)
beq $t2, $t3, _equals6
li $t0,0
j _not_equals6
_equals6:
li $t0,1
_not_equals6:
sw $t0, 72($sp)
lw $t0, 72($sp)
sw $t0, 28($sp)
lw $t1, 28($sp)
beq $t1, $zero, LABEL0
li $t0, 7
sw $t0, 68($sp)
lw $t2, 68($sp)
lw $t1, 236($sp)
addi $t1, $t1, 4
sw $t2, ($t1)
lw $t1, 236($sp)
addi $t1, $t1, 4
lw $t0, ($t1)
sw $t0, 64($sp)
li $t0, 4
sw $t0, 60($sp)
lw $t2, 60($sp)
lw $t1, 236($sp)
addi $t1, $t1, 8
sw $t2, ($t1)
lw $t1, 236($sp)
addi $t1, $t1, 8
lw $t0, ($t1)
sw $t0, 56($sp)
lw $t2, 220($sp)
lw $t1, 236($sp)
addi $t1, $t1, 12
sw $t2, ($t1)
lw $t1, 236($sp)
addi $t1, $t1, 12
lw $t0, ($t1)
sw $t0, 52($sp)
lw $t0, 52($sp)
sw $t0, 28($sp)
j LABEL1
LABEL0:
li $t0, 5
sw $t0, 48($sp)
lw $t2, 48($sp)
lw $t1, 236($sp)
addi $t1, $t1, 4
sw $t2, ($t1)
lw $t1, 236($sp)
addi $t1, $t1, 4
lw $t0, ($t1)
sw $t0, 44($sp)
li $t0, 5
sw $t0, 40($sp)
lw $t2, 40($sp)
lw $t1, 236($sp)
addi $t1, $t1, 8
sw $t2, ($t1)
lw $t1, 236($sp)
addi $t1, $t1, 8
lw $t0, ($t1)
sw $t0, 36($sp)
lw $t2, 220($sp)
lw $t1, 236($sp)
addi $t1, $t1, 12
sw $t2, ($t1)
lw $t1, 236($sp)
addi $t1, $t1, 12
lw $t0, ($t1)
sw $t0, 32($sp)
lw $t0, 32($sp)
sw $t0, 28($sp)
LABEL1:
lw $t0, 28($sp)
sw $t0, 24($sp)
LABEL3:
lw $t0, 24($sp)
sw $t0, 20($sp)
LABEL5:
lw $t0, 20($sp)
sw $t0, 16($sp)
LABEL7:
lw $t0, 16($sp)
sw $t0, 12($sp)
LABEL9:
lw $t0, 12($sp)
sw $t0, 8($sp)
LABEL11:
lw $t0, 236($sp)
sw $t0, 4($sp)
lw $ra, ($sp)
addi $sp, $sp, 244
jr $ra
initialize_Board:
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
sw $ra, 0($sp)
lw $t2, 16($sp)
lw $t1, 24($sp)
addi $t1, $t1, 4
sw $t2, ($t1)
lw $t2, 12($sp)
lw $t1, 24($sp)
addi $t1, $t1, 8
sw $t2, ($t1)
lw $t2, 8($sp)
lw $t1, 24($sp)
addi $t1, $t1, 12
sw $t2, ($t1)
lw $t0, 24($sp)
sw $t0, 4($sp)
lw $ra, ($sp)
addi $sp, $sp, 28
jr $ra
CellularAutomaton_init:
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
sw $ra, 0($sp)
lw $t2, 28($sp)
lw $t1, 24($sp)
addi $t1, $t1, 16
sw $t2, ($t1)
lw $t1, 24($sp)
addi $t1, $t1, 16
lw $t0, ($t1)
sw $t0, 16($sp)
lw $t0, 28($sp)
sw $t0, 8($sp)
lw $t1, 8($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 28($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
la $t3, CellularAutomaton_method
la $s3, board_init_
li $s1, 1000
jal find
addi $t0, $t2, 3
la $t1, CellularAutomaton
li $a0,4
mult $t0, $a0
mflo $t0
add $t1, $t1, $t0
lw $t2, ($t1)
jal $t2
sw $t0, 12($sp)
lw $t0, 24($sp)
sw $t0, 4($sp)
lw $ra, ($sp)
addi $sp, $sp, 32
jr $ra
CellularAutomaton_print:
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
sw $ra, 0($sp)
li $t0, 0
sw $t0, 112($sp)
lw $t0, 112($sp)
sw $t0, 108($sp)
lw $t1, 120($sp)
addi $t1, $t1, 12
lw $t0, ($t1)
sw $t0, 104($sp)
lw $t0, 104($sp)
sw $t0, 100($sp)
lw $t0, x_76_ad
sw $t0, 88($sp)
lw $t0, 88($sp)
sw $t0, 92($sp)
lw $t1, 92($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 124($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
la $t3, CellularAutomaton_method
la $s3, out_string_
li $s1, 1000
jal find
addi $t0, $t2, 3
la $t1, CellularAutomaton
li $a0,4
mult $t0, $a0
mflo $t0
add $t1, $t1, $t0
lw $t2, ($t1)
jal $t2
sw $t0, 96($sp)
LABEL12:
lw $t2, 108($sp)
lw $t3, 100($sp)
blt $t2, $t3,less_than_6
li $t0, 0
j not_less_6
less_than_6:
li $t0, 1
not_less_6:
sw $t0, 84($sp)
lw $t0, 84($sp)
sw $t0, 20($sp)
lw $t1, 20($sp)
beq $t1, $zero, LABEL13
lw $t1, 120($sp)
addi $t1, $t1, 16
lw $t0, ($t1)
sw $t0, 68($sp)
lw $a0, String
li $v0, 9
syscall
la $t1, String
move $t0, $v0
sw $t1, ($t0)
sw $t0, 60($sp)
lw $t2, 68($sp)
lw $t1, 60($sp)
addi $t1, $t1, 4
sw $t2, ($t1)
lw $t1, 60($sp)
lw $t0, ($t1)
sw $t0, 64($sp)
lw $t0, 108($sp)
sw $t0, 56($sp)
lw $t1, 120($sp)
addi $t1, $t1, 8
lw $t0, ($t1)
sw $t0, 48($sp)
lw $t0, 48($sp)
sw $t0, 52($sp)
lw $t1, 56($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 56($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 68($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 76($sp)
addi $t3, $t1, 4
lw $t3, ($t3)
la $s3, substr_
li $s1, 1000
jal find
addi $t0, $t2, 3
lw $t1, 76($sp)
li $a0,4
mult $t0, $a0
mflo $t0
add $t1, $t1, $t0
lw $t2, ($t1)
jal $t2
sw $t0, 72($sp)
lw $t0, 72($sp)
sw $t0, 76($sp)
lw $t1, 76($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 124($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
la $t3, CellularAutomaton_method
la $s3, out_string_
li $s1, 1000
jal find
addi $t0, $t2, 3
la $t1, CellularAutomaton
li $a0,4
mult $t0, $a0
mflo $t0
add $t1, $t1, $t0
lw $t2, ($t1)
jal $t2
sw $t0, 80($sp)
lw $t0, x_90_ad
sw $t0, 36($sp)
lw $t0, 36($sp)
sw $t0, 40($sp)
lw $t1, 40($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 124($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
la $t3, CellularAutomaton_method
la $s3, out_string_
li $s1, 1000
jal find
addi $t0, $t2, 3
la $t1, CellularAutomaton
li $a0,4
mult $t0, $a0
mflo $t0
add $t1, $t1, $t0
lw $t2, ($t1)
jal $t2
sw $t0, 44($sp)
lw $t1, 120($sp)
addi $t1, $t1, 8
lw $t0, ($t1)
sw $t0, 32($sp)
lw $t2, 108($sp)
lw $t3, 32($sp)
add $t0, $t2, $t3
sw $t0, 28($sp)
lw $t0, 28($sp)
sw $t0, 108($sp)
j LABEL12
LABEL13:
lw $t0, x_98_ad
sw $t0, 8($sp)
lw $t0, 8($sp)
sw $t0, 12($sp)
lw $t1, 12($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 124($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
la $t3, CellularAutomaton_method
la $s3, out_string_
li $s1, 1000
jal find
addi $t0, $t2, 3
la $t1, CellularAutomaton
li $a0,4
mult $t0, $a0
mflo $t0
add $t1, $t1, $t0
lw $t2, ($t1)
jal $t2
sw $t0, 16($sp)
lw $t0, 120($sp)
sw $t0, 4($sp)
lw $ra, ($sp)
addi $sp, $sp, 124
jr $ra
CellularAutomaton_num_cells:
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
sw $ra, 0($sp)
lw $t1, 24($sp)
addi $t1, $t1, 16
lw $t0, ($t1)
sw $t0, 12($sp)
lw $a0, String
li $v0, 9
syscall
la $t1, String
move $t0, $v0
sw $t1, ($t0)
sw $t0, 4($sp)
lw $t2, 12($sp)
lw $t1, 4($sp)
addi $t1, $t1, 4
sw $t2, ($t1)
lw $t1, 4($sp)
lw $t0, ($t1)
sw $t0, 8($sp)
lw $t1, 4($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 12($sp)
addi $t3, $t1, 4
lw $t3, ($t3)
la $s3, length_
li $s1, 1000
jal find
addi $t0, $t2, 3
lw $t1, 12($sp)
li $a0,4
mult $t0, $a0
mflo $t0
add $t1, $t1, $t0
lw $t2, ($t1)
jal $t2
sw $t0, 16($sp)
lw $ra, ($sp)
addi $sp, $sp, 28
jr $ra
CellularAutomaton_cell:
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
sw $ra, 0($sp)
lw $t1, 60($sp)
addi $t1, $t1, 12
lw $t0, ($t1)
sw $t0, 52($sp)
li $t0, 1
sw $t0, 48($sp)
lw $t2, 52($sp)
lw $t3, 48($sp)
sub $t0, $t2, $t3
sw $t0, 44($sp)
lw $t2, 44($sp)
lw $t3, 64($sp)
blt $t2, $t3,less_than_7
li $t0, 0
j not_less_7
less_than_7:
li $t0, 1
not_less_7:
sw $t0, 40($sp)
lw $t0, 40($sp)
sw $t0, 4($sp)
lw $t1, 4($sp)
beq $t1, $zero, LABEL14
lw $t0, x_110_ad
sw $t0, 36($sp)
lw $t0, 36($sp)
sw $t0, 4($sp)
j LABEL15
LABEL14:
lw $t1, 60($sp)
addi $t1, $t1, 16
lw $t0, ($t1)
sw $t0, 28($sp)
lw $a0, String
li $v0, 9
syscall
la $t1, String
move $t0, $v0
sw $t1, ($t0)
sw $t0, 20($sp)
lw $t2, 28($sp)
lw $t1, 20($sp)
addi $t1, $t1, 4
sw $t2, ($t1)
lw $t1, 20($sp)
lw $t0, ($t1)
sw $t0, 24($sp)
lw $t0, 64($sp)
sw $t0, 16($sp)
li $t0, 1
sw $t0, 8($sp)
lw $t0, 8($sp)
sw $t0, 12($sp)
lw $t1, 16($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 16($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 28($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 36($sp)
addi $t3, $t1, 4
lw $t3, ($t3)
la $s3, substr_
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
sw $t0, 32($sp)
lw $t0, 32($sp)
sw $t0, 4($sp)
LABEL15:
lw $ra, ($sp)
addi $sp, $sp, 68
jr $ra
CellularAutomaton_north:
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
sw $ra, 0($sp)
lw $t1, 48($sp)
addi $t1, $t1, 8
lw $t0, ($t1)
sw $t0, 40($sp)
lw $t2, 52($sp)
lw $t3, 40($sp)
sub $t0, $t2, $t3
sw $t0, 36($sp)
li $t0, 0
sw $t0, 32($sp)
lw $t2, 36($sp)
lw $t3, 32($sp)
blt $t2, $t3,less_than_8
li $t0, 0
j not_less_8
less_than_8:
li $t0, 1
not_less_8:
sw $t0, 28($sp)
lw $t0, 28($sp)
sw $t0, 4($sp)
lw $t1, 4($sp)
beq $t1, $zero, LABEL16
lw $t0, x_125_ad
sw $t0, 24($sp)
lw $t0, 24($sp)
sw $t0, 4($sp)
j LABEL17
LABEL16:
lw $t1, 48($sp)
addi $t1, $t1, 8
lw $t0, ($t1)
sw $t0, 12($sp)
lw $t2, 52($sp)
lw $t3, 12($sp)
sub $t0, $t2, $t3
sw $t0, 8($sp)
lw $t0, 8($sp)
sw $t0, 16($sp)
lw $t1, 16($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 52($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
la $t3, CellularAutomaton_method
la $s3, cell_
li $s1, 1000
jal find
addi $t0, $t2, 3
la $t1, CellularAutomaton
li $a0,4
mult $t0, $a0
mflo $t0
add $t1, $t1, $t0
lw $t2, ($t1)
jal $t2
sw $t0, 20($sp)
lw $t0, 20($sp)
sw $t0, 4($sp)
LABEL17:
lw $ra, ($sp)
addi $sp, $sp, 56
jr $ra
CellularAutomaton_south:
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
sw $ra, 0($sp)
lw $t1, 48($sp)
addi $t1, $t1, 12
lw $t0, ($t1)
sw $t0, 40($sp)
lw $t1, 48($sp)
addi $t1, $t1, 8
lw $t0, ($t1)
sw $t0, 36($sp)
lw $t2, 52($sp)
lw $t3, 36($sp)
add $t0, $t2, $t3
sw $t0, 32($sp)
lw $t2, 40($sp)
lw $t3, 32($sp)
blt $t2, $t3,less_than_9
li $t0, 0
j not_less_9
less_than_9:
li $t0, 1
not_less_9:
sw $t0, 28($sp)
lw $t0, 28($sp)
sw $t0, 4($sp)
lw $t1, 4($sp)
beq $t1, $zero, LABEL18
lw $t0, x_137_ad
sw $t0, 24($sp)
lw $t0, 24($sp)
sw $t0, 4($sp)
j LABEL19
LABEL18:
lw $t1, 48($sp)
addi $t1, $t1, 8
lw $t0, ($t1)
sw $t0, 12($sp)
lw $t2, 52($sp)
lw $t3, 12($sp)
add $t0, $t2, $t3
sw $t0, 8($sp)
lw $t0, 8($sp)
sw $t0, 16($sp)
lw $t1, 16($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 52($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
la $t3, CellularAutomaton_method
la $s3, cell_
li $s1, 1000
jal find
addi $t0, $t2, 3
la $t1, CellularAutomaton
li $a0,4
mult $t0, $a0
mflo $t0
add $t1, $t1, $t0
lw $t2, ($t1)
jal $t2
sw $t0, 20($sp)
lw $t0, 20($sp)
sw $t0, 4($sp)
LABEL19:
lw $ra, ($sp)
addi $sp, $sp, 56
jr $ra
CellularAutomaton_east:
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
sw $ra, 0($sp)
li $t0, 1
sw $t0, 60($sp)
lw $t2, 72($sp)
lw $t3, 60($sp)
add $t0, $t2, $t3
sw $t0, 56($sp)
lw $t1, 68($sp)
addi $t1, $t1, 8
lw $t0, ($t1)
sw $t0, 52($sp)
lw $t2, 56($sp)
lw $t3, 52($sp)
div $t2, $t3
mflo $t0
sw $t0, 48($sp)
lw $t1, 68($sp)
addi $t1, $t1, 8
lw $t0, ($t1)
sw $t0, 44($sp)
lw $t2, 48($sp)
lw $t3, 44($sp)
mult $t2, $t3
mflo $t0
sw $t0, 40($sp)
li $t0, 1
sw $t0, 36($sp)
lw $t2, 72($sp)
lw $t3, 36($sp)
add $t0, $t2, $t3
sw $t0, 32($sp)
lw $t2, 40($sp)
lw $t3, 32($sp)
beq $t2, $t3, _equals11
li $t0,0
j _not_equals11
_equals11:
li $t0,1
_not_equals11:
sw $t0, 28($sp)
lw $t0, 28($sp)
sw $t0, 4($sp)
lw $t1, 4($sp)
beq $t1, $zero, LABEL20
lw $t0, x_154_ad
sw $t0, 24($sp)
lw $t0, 24($sp)
sw $t0, 4($sp)
j LABEL21
LABEL20:
li $t0, 1
sw $t0, 12($sp)
lw $t2, 72($sp)
lw $t3, 12($sp)
add $t0, $t2, $t3
sw $t0, 8($sp)
lw $t0, 8($sp)
sw $t0, 16($sp)
lw $t1, 16($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 72($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
la $t3, CellularAutomaton_method
la $s3, cell_
li $s1, 1000
jal find
addi $t0, $t2, 3
la $t1, CellularAutomaton
li $a0,4
mult $t0, $a0
mflo $t0
add $t1, $t1, $t0
lw $t2, ($t1)
jal $t2
sw $t0, 20($sp)
lw $t0, 20($sp)
sw $t0, 4($sp)
LABEL21:
lw $ra, ($sp)
addi $sp, $sp, 76
jr $ra
CellularAutomaton_west:
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
sw $ra, 0($sp)
li $t0, 0
sw $t0, 60($sp)
lw $t2, 72($sp)
lw $t3, 60($sp)
beq $t2, $t3, _equals12
li $t0,0
j _not_equals12
_equals12:
li $t0,1
_not_equals12:
sw $t0, 56($sp)
lw $t0, 56($sp)
sw $t0, 4($sp)
lw $t1, 4($sp)
beq $t1, $zero, LABEL24
lw $t0, x_164_ad
sw $t0, 52($sp)
lw $t0, 52($sp)
sw $t0, 4($sp)
j LABEL25
LABEL24:
lw $t1, 68($sp)
addi $t1, $t1, 8
lw $t0, ($t1)
sw $t0, 48($sp)
lw $t2, 72($sp)
lw $t3, 48($sp)
div $t2, $t3
mflo $t0
sw $t0, 44($sp)
lw $t1, 68($sp)
addi $t1, $t1, 8
lw $t0, ($t1)
sw $t0, 40($sp)
lw $t2, 44($sp)
lw $t3, 40($sp)
mult $t2, $t3
mflo $t0
sw $t0, 36($sp)
lw $t2, 36($sp)
lw $t3, 72($sp)
beq $t2, $t3, _equals13
li $t0,0
j _not_equals13
_equals13:
li $t0,1
_not_equals13:
sw $t0, 32($sp)
lw $t0, 32($sp)
sw $t0, 8($sp)
lw $t1, 8($sp)
beq $t1, $zero, LABEL22
lw $t0, x_171_ad
sw $t0, 28($sp)
lw $t0, 28($sp)
sw $t0, 8($sp)
j LABEL23
LABEL22:
li $t0, 1
sw $t0, 16($sp)
lw $t2, 72($sp)
lw $t3, 16($sp)
sub $t0, $t2, $t3
sw $t0, 12($sp)
lw $t0, 12($sp)
sw $t0, 20($sp)
lw $t1, 20($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 72($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
la $t3, CellularAutomaton_method
la $s3, cell_
li $s1, 1000
jal find
addi $t0, $t2, 3
la $t1, CellularAutomaton
li $a0,4
mult $t0, $a0
mflo $t0
add $t1, $t1, $t0
lw $t2, ($t1)
jal $t2
sw $t0, 24($sp)
lw $t0, 24($sp)
sw $t0, 8($sp)
LABEL23:
lw $t0, 8($sp)
sw $t0, 4($sp)
LABEL25:
lw $ra, ($sp)
addi $sp, $sp, 76
jr $ra
CellularAutomaton_northwest:
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
sw $ra, 0($sp)
lw $t1, 76($sp)
addi $t1, $t1, 8
lw $t0, ($t1)
sw $t0, 68($sp)
lw $t2, 80($sp)
lw $t3, 68($sp)
sub $t0, $t2, $t3
sw $t0, 64($sp)
li $t0, 0
sw $t0, 60($sp)
lw $t2, 64($sp)
lw $t3, 60($sp)
blt $t2, $t3,less_than_13
li $t0, 0
j not_less_13
less_than_13:
li $t0, 1
not_less_13:
sw $t0, 56($sp)
lw $t0, 56($sp)
sw $t0, 4($sp)
lw $t1, 4($sp)
beq $t1, $zero, LABEL28
lw $t0, x_184_ad
sw $t0, 52($sp)
lw $t0, 52($sp)
sw $t0, 4($sp)
j LABEL29
LABEL28:
lw $t1, 76($sp)
addi $t1, $t1, 8
lw $t0, ($t1)
sw $t0, 48($sp)
lw $t2, 80($sp)
lw $t3, 48($sp)
div $t2, $t3
mflo $t0
sw $t0, 44($sp)
lw $t1, 76($sp)
addi $t1, $t1, 8
lw $t0, ($t1)
sw $t0, 40($sp)
lw $t2, 44($sp)
lw $t3, 40($sp)
mult $t2, $t3
mflo $t0
sw $t0, 36($sp)
lw $t2, 36($sp)
lw $t3, 80($sp)
beq $t2, $t3, _equals15
li $t0,0
j _not_equals15
_equals15:
li $t0,1
_not_equals15:
sw $t0, 32($sp)
lw $t0, 32($sp)
sw $t0, 8($sp)
lw $t1, 8($sp)
beq $t1, $zero, LABEL26
lw $t0, x_191_ad
sw $t0, 28($sp)
lw $t0, 28($sp)
sw $t0, 8($sp)
j LABEL27
LABEL26:
li $t0, 1
sw $t0, 16($sp)
lw $t2, 80($sp)
lw $t3, 16($sp)
sub $t0, $t2, $t3
sw $t0, 12($sp)
lw $t0, 12($sp)
sw $t0, 20($sp)
lw $t1, 20($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 80($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
la $t3, CellularAutomaton_method
la $s3, north_
li $s1, 1000
jal find
addi $t0, $t2, 3
la $t1, CellularAutomaton
li $a0,4
mult $t0, $a0
mflo $t0
add $t1, $t1, $t0
lw $t2, ($t1)
jal $t2
sw $t0, 24($sp)
lw $t0, 24($sp)
sw $t0, 8($sp)
LABEL27:
lw $t0, 8($sp)
sw $t0, 4($sp)
LABEL29:
lw $ra, ($sp)
addi $sp, $sp, 84
jr $ra
CellularAutomaton_northeast:
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
sw $ra, 0($sp)
lw $t1, 92($sp)
addi $t1, $t1, 8
lw $t0, ($t1)
sw $t0, 84($sp)
lw $t2, 96($sp)
lw $t3, 84($sp)
sub $t0, $t2, $t3
sw $t0, 80($sp)
li $t0, 0
sw $t0, 76($sp)
lw $t2, 80($sp)
lw $t3, 76($sp)
blt $t2, $t3,less_than_15
li $t0, 0
j not_less_15
less_than_15:
li $t0, 1
not_less_15:
sw $t0, 72($sp)
lw $t0, 72($sp)
sw $t0, 4($sp)
lw $t1, 4($sp)
beq $t1, $zero, LABEL32
lw $t0, x_204_ad
sw $t0, 68($sp)
lw $t0, 68($sp)
sw $t0, 4($sp)
j LABEL33
LABEL32:
li $t0, 1
sw $t0, 64($sp)
lw $t2, 96($sp)
lw $t3, 64($sp)
add $t0, $t2, $t3
sw $t0, 60($sp)
lw $t1, 92($sp)
addi $t1, $t1, 8
lw $t0, ($t1)
sw $t0, 56($sp)
lw $t2, 60($sp)
lw $t3, 56($sp)
div $t2, $t3
mflo $t0
sw $t0, 52($sp)
lw $t1, 92($sp)
addi $t1, $t1, 8
lw $t0, ($t1)
sw $t0, 48($sp)
lw $t2, 52($sp)
lw $t3, 48($sp)
mult $t2, $t3
mflo $t0
sw $t0, 44($sp)
li $t0, 1
sw $t0, 40($sp)
lw $t2, 96($sp)
lw $t3, 40($sp)
add $t0, $t2, $t3
sw $t0, 36($sp)
lw $t2, 44($sp)
lw $t3, 36($sp)
beq $t2, $t3, _equals17
li $t0,0
j _not_equals17
_equals17:
li $t0,1
_not_equals17:
sw $t0, 32($sp)
lw $t0, 32($sp)
sw $t0, 8($sp)
lw $t1, 8($sp)
beq $t1, $zero, LABEL30
lw $t0, x_215_ad
sw $t0, 28($sp)
lw $t0, 28($sp)
sw $t0, 8($sp)
j LABEL31
LABEL30:
li $t0, 1
sw $t0, 16($sp)
lw $t2, 96($sp)
lw $t3, 16($sp)
add $t0, $t2, $t3
sw $t0, 12($sp)
lw $t0, 12($sp)
sw $t0, 20($sp)
lw $t1, 20($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 96($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
la $t3, CellularAutomaton_method
la $s3, north_
li $s1, 1000
jal find
addi $t0, $t2, 3
la $t1, CellularAutomaton
li $a0,4
mult $t0, $a0
mflo $t0
add $t1, $t1, $t0
lw $t2, ($t1)
jal $t2
sw $t0, 24($sp)
lw $t0, 24($sp)
sw $t0, 8($sp)
LABEL31:
lw $t0, 8($sp)
sw $t0, 4($sp)
LABEL33:
lw $ra, ($sp)
addi $sp, $sp, 100
jr $ra
CellularAutomaton_southeast:
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
sw $ra, 0($sp)
lw $t1, 92($sp)
addi $t1, $t1, 12
lw $t0, ($t1)
sw $t0, 84($sp)
lw $t1, 92($sp)
addi $t1, $t1, 8
lw $t0, ($t1)
sw $t0, 80($sp)
lw $t2, 96($sp)
lw $t3, 80($sp)
add $t0, $t2, $t3
sw $t0, 76($sp)
lw $t2, 84($sp)
lw $t3, 76($sp)
blt $t2, $t3,less_than_17
li $t0, 0
j not_less_17
less_than_17:
li $t0, 1
not_less_17:
sw $t0, 72($sp)
lw $t0, 72($sp)
sw $t0, 4($sp)
lw $t1, 4($sp)
beq $t1, $zero, LABEL36
lw $t0, x_228_ad
sw $t0, 68($sp)
lw $t0, 68($sp)
sw $t0, 4($sp)
j LABEL37
LABEL36:
li $t0, 1
sw $t0, 64($sp)
lw $t2, 96($sp)
lw $t3, 64($sp)
add $t0, $t2, $t3
sw $t0, 60($sp)
lw $t1, 92($sp)
addi $t1, $t1, 8
lw $t0, ($t1)
sw $t0, 56($sp)
lw $t2, 60($sp)
lw $t3, 56($sp)
div $t2, $t3
mflo $t0
sw $t0, 52($sp)
lw $t1, 92($sp)
addi $t1, $t1, 8
lw $t0, ($t1)
sw $t0, 48($sp)
lw $t2, 52($sp)
lw $t3, 48($sp)
mult $t2, $t3
mflo $t0
sw $t0, 44($sp)
li $t0, 1
sw $t0, 40($sp)
lw $t2, 96($sp)
lw $t3, 40($sp)
add $t0, $t2, $t3
sw $t0, 36($sp)
lw $t2, 44($sp)
lw $t3, 36($sp)
beq $t2, $t3, _equals19
li $t0,0
j _not_equals19
_equals19:
li $t0,1
_not_equals19:
sw $t0, 32($sp)
lw $t0, 32($sp)
sw $t0, 8($sp)
lw $t1, 8($sp)
beq $t1, $zero, LABEL34
lw $t0, x_239_ad
sw $t0, 28($sp)
lw $t0, 28($sp)
sw $t0, 8($sp)
j LABEL35
LABEL34:
li $t0, 1
sw $t0, 16($sp)
lw $t2, 96($sp)
lw $t3, 16($sp)
add $t0, $t2, $t3
sw $t0, 12($sp)
lw $t0, 12($sp)
sw $t0, 20($sp)
lw $t1, 20($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 96($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
la $t3, CellularAutomaton_method
la $s3, south_
li $s1, 1000
jal find
addi $t0, $t2, 3
la $t1, CellularAutomaton
li $a0,4
mult $t0, $a0
mflo $t0
add $t1, $t1, $t0
lw $t2, ($t1)
jal $t2
sw $t0, 24($sp)
lw $t0, 24($sp)
sw $t0, 8($sp)
LABEL35:
lw $t0, 8($sp)
sw $t0, 4($sp)
LABEL37:
lw $ra, ($sp)
addi $sp, $sp, 100
jr $ra
CellularAutomaton_southwest:
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
sw $ra, 0($sp)
lw $t1, 76($sp)
addi $t1, $t1, 12
lw $t0, ($t1)
sw $t0, 68($sp)
lw $t1, 76($sp)
addi $t1, $t1, 8
lw $t0, ($t1)
sw $t0, 64($sp)
lw $t2, 80($sp)
lw $t3, 64($sp)
add $t0, $t2, $t3
sw $t0, 60($sp)
lw $t2, 68($sp)
lw $t3, 60($sp)
blt $t2, $t3,less_than_19
li $t0, 0
j not_less_19
less_than_19:
li $t0, 1
not_less_19:
sw $t0, 56($sp)
lw $t0, 56($sp)
sw $t0, 4($sp)
lw $t1, 4($sp)
beq $t1, $zero, LABEL40
lw $t0, x_252_ad
sw $t0, 52($sp)
lw $t0, 52($sp)
sw $t0, 4($sp)
j LABEL41
LABEL40:
lw $t1, 76($sp)
addi $t1, $t1, 8
lw $t0, ($t1)
sw $t0, 48($sp)
lw $t2, 80($sp)
lw $t3, 48($sp)
div $t2, $t3
mflo $t0
sw $t0, 44($sp)
lw $t1, 76($sp)
addi $t1, $t1, 8
lw $t0, ($t1)
sw $t0, 40($sp)
lw $t2, 44($sp)
lw $t3, 40($sp)
mult $t2, $t3
mflo $t0
sw $t0, 36($sp)
lw $t2, 36($sp)
lw $t3, 80($sp)
beq $t2, $t3, _equals21
li $t0,0
j _not_equals21
_equals21:
li $t0,1
_not_equals21:
sw $t0, 32($sp)
lw $t0, 32($sp)
sw $t0, 8($sp)
lw $t1, 8($sp)
beq $t1, $zero, LABEL38
lw $t0, x_259_ad
sw $t0, 28($sp)
lw $t0, 28($sp)
sw $t0, 8($sp)
j LABEL39
LABEL38:
li $t0, 1
sw $t0, 16($sp)
lw $t2, 80($sp)
lw $t3, 16($sp)
sub $t0, $t2, $t3
sw $t0, 12($sp)
lw $t0, 12($sp)
sw $t0, 20($sp)
lw $t1, 20($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 80($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
la $t3, CellularAutomaton_method
la $s3, south_
li $s1, 1000
jal find
addi $t0, $t2, 3
la $t1, CellularAutomaton
li $a0,4
mult $t0, $a0
mflo $t0
add $t1, $t1, $t0
lw $t2, ($t1)
jal $t2
sw $t0, 24($sp)
lw $t0, 24($sp)
sw $t0, 8($sp)
LABEL39:
lw $t0, 8($sp)
sw $t0, 4($sp)
LABEL41:
lw $ra, ($sp)
addi $sp, $sp, 84
jr $ra
CellularAutomaton_neighbors:
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
li $t1, 0
sw $t1, 0($sp)
addi $sp, $sp, -4
sw $ra, 0($sp)
lw $t0, 264($sp)
sw $t0, 248($sp)
lw $t1, 248($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 264($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
la $t3, CellularAutomaton_method
la $s3, north_
li $s1, 1000
jal find
addi $t0, $t2, 3
la $t1, CellularAutomaton
li $a0,4
mult $t0, $a0
mflo $t0
add $t1, $t1, $t0
lw $t2, ($t1)
jal $t2
sw $t0, 252($sp)
lw $t0, x_270_ad
sw $t0, 244($sp)
lw $s2, 252($sp)
lw $s3, 244($sp)
jal cmploop
move $t0, $a0
sw $t0, 240($sp)
lw $t0, 240($sp)
sw $t0, 228($sp)
lw $t1, 228($sp)
beq $t1, $zero, LABEL42
li $t0, 1
sw $t0, 236($sp)
lw $t0, 236($sp)
sw $t0, 228($sp)
j LABEL43
LABEL42:
li $t0, 0
sw $t0, 232($sp)
lw $t0, 232($sp)
sw $t0, 228($sp)
LABEL43:
lw $t0, 264($sp)
sw $t0, 220($sp)
lw $t1, 220($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 264($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
la $t3, CellularAutomaton_method
la $s3, south_
li $s1, 1000
jal find
addi $t0, $t2, 3
la $t1, CellularAutomaton
li $a0,4
mult $t0, $a0
mflo $t0
add $t1, $t1, $t0
lw $t2, ($t1)
jal $t2
sw $t0, 224($sp)
lw $t0, x_278_ad
sw $t0, 216($sp)
lw $s2, 224($sp)
lw $s3, 216($sp)
jal cmploop
move $t0, $a0
sw $t0, 212($sp)
lw $t0, 212($sp)
sw $t0, 200($sp)
lw $t1, 200($sp)
beq $t1, $zero, LABEL44
li $t0, 1
sw $t0, 208($sp)
lw $t0, 208($sp)
sw $t0, 200($sp)
j LABEL45
LABEL44:
li $t0, 0
sw $t0, 204($sp)
lw $t0, 204($sp)
sw $t0, 200($sp)
LABEL45:
lw $t2, 228($sp)
lw $t3, 200($sp)
add $t0, $t2, $t3
sw $t0, 196($sp)
lw $t0, 264($sp)
sw $t0, 188($sp)
lw $t1, 188($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 264($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
la $t3, CellularAutomaton_method
la $s3, east_
li $s1, 1000
jal find
addi $t0, $t2, 3
la $t1, CellularAutomaton
li $a0,4
mult $t0, $a0
mflo $t0
add $t1, $t1, $t0
lw $t2, ($t1)
jal $t2
sw $t0, 192($sp)
lw $t0, x_287_ad
sw $t0, 184($sp)
lw $s2, 192($sp)
lw $s3, 184($sp)
jal cmploop
move $t0, $a0
sw $t0, 180($sp)
lw $t0, 180($sp)
sw $t0, 168($sp)
lw $t1, 168($sp)
beq $t1, $zero, LABEL46
li $t0, 1
sw $t0, 176($sp)
lw $t0, 176($sp)
sw $t0, 168($sp)
j LABEL47
LABEL46:
li $t0, 0
sw $t0, 172($sp)
lw $t0, 172($sp)
sw $t0, 168($sp)
LABEL47:
lw $t2, 196($sp)
lw $t3, 168($sp)
add $t0, $t2, $t3
sw $t0, 164($sp)
lw $t0, 264($sp)
sw $t0, 156($sp)
lw $t1, 156($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 264($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
la $t3, CellularAutomaton_method
la $s3, west_
li $s1, 1000
jal find
addi $t0, $t2, 3
la $t1, CellularAutomaton
li $a0,4
mult $t0, $a0
mflo $t0
add $t1, $t1, $t0
lw $t2, ($t1)
jal $t2
sw $t0, 160($sp)
lw $t0, x_296_ad
sw $t0, 152($sp)
lw $s2, 160($sp)
lw $s3, 152($sp)
jal cmploop
move $t0, $a0
sw $t0, 148($sp)
lw $t0, 148($sp)
sw $t0, 136($sp)
lw $t1, 136($sp)
beq $t1, $zero, LABEL48
li $t0, 1
sw $t0, 144($sp)
lw $t0, 144($sp)
sw $t0, 136($sp)
j LABEL49
LABEL48:
li $t0, 0
sw $t0, 140($sp)
lw $t0, 140($sp)
sw $t0, 136($sp)
LABEL49:
lw $t2, 164($sp)
lw $t3, 136($sp)
add $t0, $t2, $t3
sw $t0, 132($sp)
lw $t0, 264($sp)
sw $t0, 124($sp)
lw $t1, 124($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 264($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
la $t3, CellularAutomaton_method
la $s3, northeast_
li $s1, 1000
jal find
addi $t0, $t2, 3
la $t1, CellularAutomaton
li $a0,4
mult $t0, $a0
mflo $t0
add $t1, $t1, $t0
lw $t2, ($t1)
jal $t2
sw $t0, 128($sp)
lw $t0, x_305_ad
sw $t0, 120($sp)
lw $s2, 128($sp)
lw $s3, 120($sp)
jal cmploop
move $t0, $a0
sw $t0, 116($sp)
lw $t0, 116($sp)
sw $t0, 104($sp)
lw $t1, 104($sp)
beq $t1, $zero, LABEL50
li $t0, 1
sw $t0, 112($sp)
lw $t0, 112($sp)
sw $t0, 104($sp)
j LABEL51
LABEL50:
li $t0, 0
sw $t0, 108($sp)
lw $t0, 108($sp)
sw $t0, 104($sp)
LABEL51:
lw $t2, 132($sp)
lw $t3, 104($sp)
add $t0, $t2, $t3
sw $t0, 100($sp)
lw $t0, 264($sp)
sw $t0, 92($sp)
lw $t1, 92($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 264($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
la $t3, CellularAutomaton_method
la $s3, northwest_
li $s1, 1000
jal find
addi $t0, $t2, 3
la $t1, CellularAutomaton
li $a0,4
mult $t0, $a0
mflo $t0
add $t1, $t1, $t0
lw $t2, ($t1)
jal $t2
sw $t0, 96($sp)
lw $t0, x_314_ad
sw $t0, 88($sp)
lw $s2, 96($sp)
lw $s3, 88($sp)
jal cmploop
move $t0, $a0
sw $t0, 84($sp)
lw $t0, 84($sp)
sw $t0, 72($sp)
lw $t1, 72($sp)
beq $t1, $zero, LABEL52
li $t0, 1
sw $t0, 80($sp)
lw $t0, 80($sp)
sw $t0, 72($sp)
j LABEL53
LABEL52:
li $t0, 0
sw $t0, 76($sp)
lw $t0, 76($sp)
sw $t0, 72($sp)
LABEL53:
lw $t2, 100($sp)
lw $t3, 72($sp)
add $t0, $t2, $t3
sw $t0, 68($sp)
lw $t0, 264($sp)
sw $t0, 60($sp)
lw $t1, 60($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 264($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
la $t3, CellularAutomaton_method
la $s3, southeast_
li $s1, 1000
jal find
addi $t0, $t2, 3
la $t1, CellularAutomaton
li $a0,4
mult $t0, $a0
mflo $t0
add $t1, $t1, $t0
lw $t2, ($t1)
jal $t2
sw $t0, 64($sp)
lw $t0, x_323_ad
sw $t0, 56($sp)
lw $s2, 64($sp)
lw $s3, 56($sp)
jal cmploop
move $t0, $a0
sw $t0, 52($sp)
lw $t0, 52($sp)
sw $t0, 40($sp)
lw $t1, 40($sp)
beq $t1, $zero, LABEL54
li $t0, 1
sw $t0, 48($sp)
lw $t0, 48($sp)
sw $t0, 40($sp)
j LABEL55
LABEL54:
li $t0, 0
sw $t0, 44($sp)
lw $t0, 44($sp)
sw $t0, 40($sp)
LABEL55:
lw $t2, 68($sp)
lw $t3, 40($sp)
add $t0, $t2, $t3
sw $t0, 36($sp)
lw $t0, 264($sp)
sw $t0, 28($sp)
lw $t1, 28($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 264($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
la $t3, CellularAutomaton_method
la $s3, southwest_
li $s1, 1000
jal find
addi $t0, $t2, 3
la $t1, CellularAutomaton
li $a0,4
mult $t0, $a0
mflo $t0
add $t1, $t1, $t0
lw $t2, ($t1)
jal $t2
sw $t0, 32($sp)
lw $t0, x_332_ad
sw $t0, 24($sp)
lw $s2, 32($sp)
lw $s3, 24($sp)
jal cmploop
move $t0, $a0
sw $t0, 20($sp)
lw $t0, 20($sp)
sw $t0, 8($sp)
lw $t1, 8($sp)
beq $t1, $zero, LABEL56
li $t0, 1
sw $t0, 16($sp)
lw $t0, 16($sp)
sw $t0, 8($sp)
j LABEL57
LABEL56:
li $t0, 0
sw $t0, 12($sp)
lw $t0, 12($sp)
sw $t0, 8($sp)
LABEL57:
lw $t2, 36($sp)
lw $t3, 8($sp)
add $t0, $t2, $t3
sw $t0, 4($sp)
lw $ra, ($sp)
addi $sp, $sp, 268
jr $ra
CellularAutomaton_cell_at_next_evolution:
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
lw $t0, 88($sp)
sw $t0, 72($sp)
lw $t1, 72($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 88($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
la $t3, CellularAutomaton_method
la $s3, neighbors_
li $s1, 1000
jal find
addi $t0, $t2, 3
la $t1, CellularAutomaton
li $a0,4
mult $t0, $a0
mflo $t0
add $t1, $t1, $t0
lw $t2, ($t1)
jal $t2
sw $t0, 76($sp)
li $t0, 3
sw $t0, 68($sp)
lw $t2, 76($sp)
lw $t3, 68($sp)
beq $t2, $t3, _equals22
li $t0,0
j _not_equals22
_equals22:
li $t0,1
_not_equals22:
sw $t0, 64($sp)
lw $t0, 64($sp)
sw $t0, 4($sp)
lw $t1, 4($sp)
beq $t1, $zero, LABEL62
lw $t0, x_344_ad
sw $t0, 60($sp)
lw $t0, 60($sp)
sw $t0, 4($sp)
j LABEL63
LABEL62:
lw $t0, 88($sp)
sw $t0, 52($sp)
lw $t1, 52($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 88($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
la $t3, CellularAutomaton_method
la $s3, neighbors_
li $s1, 1000
jal find
addi $t0, $t2, 3
la $t1, CellularAutomaton
li $a0,4
mult $t0, $a0
mflo $t0
add $t1, $t1, $t0
lw $t2, ($t1)
jal $t2
sw $t0, 56($sp)
li $t0, 2
sw $t0, 48($sp)
lw $t2, 56($sp)
lw $t3, 48($sp)
beq $t2, $t3, _equals23
li $t0,0
j _not_equals23
_equals23:
li $t0,1
_not_equals23:
sw $t0, 44($sp)
lw $t0, 44($sp)
sw $t0, 8($sp)
lw $t1, 8($sp)
beq $t1, $zero, LABEL60
lw $t0, 88($sp)
sw $t0, 36($sp)
lw $t1, 36($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 88($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
la $t3, CellularAutomaton_method
la $s3, cell_
li $s1, 1000
jal find
addi $t0, $t2, 3
la $t1, CellularAutomaton
li $a0,4
mult $t0, $a0
mflo $t0
add $t1, $t1, $t0
lw $t2, ($t1)
jal $t2
sw $t0, 40($sp)
lw $t0, x_352_ad
sw $t0, 32($sp)
lw $s2, 40($sp)
lw $s3, 32($sp)
jal cmploop
move $t0, $a0
sw $t0, 28($sp)
lw $t0, 28($sp)
sw $t0, 16($sp)
lw $t1, 16($sp)
beq $t1, $zero, LABEL58
lw $t0, x_355_ad
sw $t0, 24($sp)
lw $t0, 24($sp)
sw $t0, 16($sp)
j LABEL59
LABEL58:
lw $t0, x_357_ad
sw $t0, 20($sp)
lw $t0, 20($sp)
sw $t0, 16($sp)
LABEL59:
lw $t0, 16($sp)
sw $t0, 8($sp)
j LABEL61
LABEL60:
lw $t0, x_360_ad
sw $t0, 12($sp)
lw $t0, 12($sp)
sw $t0, 8($sp)
LABEL61:
lw $t0, 8($sp)
sw $t0, 4($sp)
LABEL63:
lw $ra, ($sp)
addi $sp, $sp, 92
jr $ra
CellularAutomaton_evolve:
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
li $t0, 0
sw $t0, 76($sp)
lw $t0, 76($sp)
sw $t0, 72($sp)
lw $t1, 84($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
la $t3, CellularAutomaton_method
la $s3, num_cells_
li $s1, 1000
jal find
addi $t0, $t2, 3
la $t1, CellularAutomaton
li $a0,4
mult $t0, $a0
mflo $t0
add $t1, $t1, $t0
lw $t2, ($t1)
jal $t2
sw $t0, 68($sp)
lw $t0, 68($sp)
sw $t0, 64($sp)
lw $t0, _vacio_ad
sw $t0, 60($sp)
LABEL64:
lw $t2, 72($sp)
lw $t3, 64($sp)
blt $t2, $t3,less_than_23
li $t0, 0
j not_less_23
less_than_23:
li $t0, 1
not_less_23:
sw $t0, 56($sp)
lw $t0, 56($sp)
sw $t0, 12($sp)
lw $t1, 12($sp)
beq $t1, $zero, LABEL65
lw $a0, String
li $v0, 9
syscall
la $t1, String
move $t0, $v0
sw $t1, ($t0)
sw $t0, 44($sp)
lw $t2, 60($sp)
lw $t1, 44($sp)
addi $t1, $t1, 4
sw $t2, ($t1)
lw $t1, 44($sp)
lw $t0, ($t1)
sw $t0, 48($sp)
lw $t0, 72($sp)
sw $t0, 32($sp)
lw $t1, 32($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 88($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
la $t3, CellularAutomaton_method
la $s3, cell_at_next_evolution_
li $s1, 1000
jal find
addi $t0, $t2, 3
la $t1, CellularAutomaton
li $a0,4
mult $t0, $a0
mflo $t0
add $t1, $t1, $t0
lw $t2, ($t1)
jal $t2
sw $t0, 36($sp)
lw $t0, 36($sp)
sw $t0, 40($sp)
lw $t1, 40($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 48($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 56($sp)
addi $t3, $t1, 4
lw $t3, ($t3)
la $s3, concat_
li $s1, 1000
jal find
addi $t0, $t2, 3
lw $t1, 56($sp)
li $a0,4
mult $t0, $a0
mflo $t0
add $t1, $t1, $t0
lw $t2, ($t1)
jal $t2
sw $t0, 52($sp)
lw $t0, 52($sp)
sw $t0, 60($sp)
li $t0, 1
sw $t0, 24($sp)
lw $t2, 72($sp)
lw $t3, 24($sp)
add $t0, $t2, $t3
sw $t0, 20($sp)
lw $t0, 20($sp)
sw $t0, 72($sp)
j LABEL64
LABEL65:
lw $t2, 60($sp)
lw $t1, 84($sp)
addi $t1, $t1, 16
sw $t2, ($t1)
lw $t1, 84($sp)
addi $t1, $t1, 16
lw $t0, ($t1)
sw $t0, 8($sp)
lw $t0, 84($sp)
sw $t0, 4($sp)
lw $ra, ($sp)
addi $sp, $sp, 88
jr $ra
CellularAutomaton_option:
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
li $t0, 0
sw $t0, 640($sp)
lw $t0, x_386_ad
sw $t0, 628($sp)
lw $t0, 628($sp)
sw $t0, 632($sp)
lw $t1, 632($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 652($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
la $t3, CellularAutomaton_method
la $s3, out_string_
li $s1, 1000
jal find
addi $t0, $t2, 3
la $t1, CellularAutomaton
li $a0,4
mult $t0, $a0
mflo $t0
add $t1, $t1, $t0
lw $t2, ($t1)
jal $t2
sw $t0, 636($sp)
lw $t0, x_390_ad
sw $t0, 616($sp)
lw $t0, 616($sp)
sw $t0, 620($sp)
lw $t1, 620($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 652($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
la $t3, CellularAutomaton_method
la $s3, out_string_
li $s1, 1000
jal find
addi $t0, $t2, 3
la $t1, CellularAutomaton
li $a0,4
mult $t0, $a0
mflo $t0
add $t1, $t1, $t0
lw $t2, ($t1)
jal $t2
sw $t0, 624($sp)
lw $t0, x_394_ad
sw $t0, 604($sp)
lw $t0, 604($sp)
sw $t0, 608($sp)
lw $t1, 608($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 652($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
la $t3, CellularAutomaton_method
la $s3, out_string_
li $s1, 1000
jal find
addi $t0, $t2, 3
la $t1, CellularAutomaton
li $a0,4
mult $t0, $a0
mflo $t0
add $t1, $t1, $t0
lw $t2, ($t1)
jal $t2
sw $t0, 612($sp)
lw $t0, x_398_ad
sw $t0, 592($sp)
lw $t0, 592($sp)
sw $t0, 596($sp)
lw $t1, 596($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 652($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
la $t3, CellularAutomaton_method
la $s3, out_string_
li $s1, 1000
jal find
addi $t0, $t2, 3
la $t1, CellularAutomaton
li $a0,4
mult $t0, $a0
mflo $t0
add $t1, $t1, $t0
lw $t2, ($t1)
jal $t2
sw $t0, 600($sp)
lw $t0, x_402_ad
sw $t0, 580($sp)
lw $t0, 580($sp)
sw $t0, 584($sp)
lw $t1, 584($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 652($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
la $t3, CellularAutomaton_method
la $s3, out_string_
li $s1, 1000
jal find
addi $t0, $t2, 3
la $t1, CellularAutomaton
li $a0,4
mult $t0, $a0
mflo $t0
add $t1, $t1, $t0
lw $t2, ($t1)
jal $t2
sw $t0, 588($sp)
lw $t0, x_406_ad
sw $t0, 568($sp)
lw $t0, 568($sp)
sw $t0, 572($sp)
lw $t1, 572($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 652($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
la $t3, CellularAutomaton_method
la $s3, out_string_
li $s1, 1000
jal find
addi $t0, $t2, 3
la $t1, CellularAutomaton
li $a0,4
mult $t0, $a0
mflo $t0
add $t1, $t1, $t0
lw $t2, ($t1)
jal $t2
sw $t0, 576($sp)
lw $t0, x_410_ad
sw $t0, 556($sp)
lw $t0, 556($sp)
sw $t0, 560($sp)
lw $t1, 560($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 652($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
la $t3, CellularAutomaton_method
la $s3, out_string_
li $s1, 1000
jal find
addi $t0, $t2, 3
la $t1, CellularAutomaton
li $a0,4
mult $t0, $a0
mflo $t0
add $t1, $t1, $t0
lw $t2, ($t1)
jal $t2
sw $t0, 564($sp)
lw $t0, x_414_ad
sw $t0, 544($sp)
lw $t0, 544($sp)
sw $t0, 548($sp)
lw $t1, 548($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 652($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
la $t3, CellularAutomaton_method
la $s3, out_string_
li $s1, 1000
jal find
addi $t0, $t2, 3
la $t1, CellularAutomaton
li $a0,4
mult $t0, $a0
mflo $t0
add $t1, $t1, $t0
lw $t2, ($t1)
jal $t2
sw $t0, 552($sp)
lw $t0, x_418_ad
sw $t0, 532($sp)
lw $t0, 532($sp)
sw $t0, 536($sp)
lw $t1, 536($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 652($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
la $t3, CellularAutomaton_method
la $s3, out_string_
li $s1, 1000
jal find
addi $t0, $t2, 3
la $t1, CellularAutomaton
li $a0,4
mult $t0, $a0
mflo $t0
add $t1, $t1, $t0
lw $t2, ($t1)
jal $t2
sw $t0, 540($sp)
lw $t0, x_422_ad
sw $t0, 520($sp)
lw $t0, 520($sp)
sw $t0, 524($sp)
lw $t1, 524($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 652($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
la $t3, CellularAutomaton_method
la $s3, out_string_
li $s1, 1000
jal find
addi $t0, $t2, 3
la $t1, CellularAutomaton
li $a0,4
mult $t0, $a0
mflo $t0
add $t1, $t1, $t0
lw $t2, ($t1)
jal $t2
sw $t0, 528($sp)
lw $t0, x_426_ad
sw $t0, 508($sp)
lw $t0, 508($sp)
sw $t0, 512($sp)
lw $t1, 512($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 652($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
la $t3, CellularAutomaton_method
la $s3, out_string_
li $s1, 1000
jal find
addi $t0, $t2, 3
la $t1, CellularAutomaton
li $a0,4
mult $t0, $a0
mflo $t0
add $t1, $t1, $t0
lw $t2, ($t1)
jal $t2
sw $t0, 516($sp)
lw $t0, x_430_ad
sw $t0, 496($sp)
lw $t0, 496($sp)
sw $t0, 500($sp)
lw $t1, 500($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 652($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
la $t3, CellularAutomaton_method
la $s3, out_string_
li $s1, 1000
jal find
addi $t0, $t2, 3
la $t1, CellularAutomaton
li $a0,4
mult $t0, $a0
mflo $t0
add $t1, $t1, $t0
lw $t2, ($t1)
jal $t2
sw $t0, 504($sp)
lw $t0, x_434_ad
sw $t0, 484($sp)
lw $t0, 484($sp)
sw $t0, 488($sp)
lw $t1, 488($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 652($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
la $t3, CellularAutomaton_method
la $s3, out_string_
li $s1, 1000
jal find
addi $t0, $t2, 3
la $t1, CellularAutomaton
li $a0,4
mult $t0, $a0
mflo $t0
add $t1, $t1, $t0
lw $t2, ($t1)
jal $t2
sw $t0, 492($sp)
lw $t0, x_438_ad
sw $t0, 472($sp)
lw $t0, 472($sp)
sw $t0, 476($sp)
lw $t1, 476($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 652($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
la $t3, CellularAutomaton_method
la $s3, out_string_
li $s1, 1000
jal find
addi $t0, $t2, 3
la $t1, CellularAutomaton
li $a0,4
mult $t0, $a0
mflo $t0
add $t1, $t1, $t0
lw $t2, ($t1)
jal $t2
sw $t0, 480($sp)
lw $t0, x_442_ad
sw $t0, 460($sp)
lw $t0, 460($sp)
sw $t0, 464($sp)
lw $t1, 464($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 652($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
la $t3, CellularAutomaton_method
la $s3, out_string_
li $s1, 1000
jal find
addi $t0, $t2, 3
la $t1, CellularAutomaton
li $a0,4
mult $t0, $a0
mflo $t0
add $t1, $t1, $t0
lw $t2, ($t1)
jal $t2
sw $t0, 468($sp)
lw $t0, x_446_ad
sw $t0, 448($sp)
lw $t0, 448($sp)
sw $t0, 452($sp)
lw $t1, 452($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 652($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
la $t3, CellularAutomaton_method
la $s3, out_string_
li $s1, 1000
jal find
addi $t0, $t2, 3
la $t1, CellularAutomaton
li $a0,4
mult $t0, $a0
mflo $t0
add $t1, $t1, $t0
lw $t2, ($t1)
jal $t2
sw $t0, 456($sp)
lw $t0, x_450_ad
sw $t0, 436($sp)
lw $t0, 436($sp)
sw $t0, 440($sp)
lw $t1, 440($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 652($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
la $t3, CellularAutomaton_method
la $s3, out_string_
li $s1, 1000
jal find
addi $t0, $t2, 3
la $t1, CellularAutomaton
li $a0,4
mult $t0, $a0
mflo $t0
add $t1, $t1, $t0
lw $t2, ($t1)
jal $t2
sw $t0, 444($sp)
lw $t0, x_454_ad
sw $t0, 424($sp)
lw $t0, 424($sp)
sw $t0, 428($sp)
lw $t1, 428($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 652($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
la $t3, CellularAutomaton_method
la $s3, out_string_
li $s1, 1000
jal find
addi $t0, $t2, 3
la $t1, CellularAutomaton
li $a0,4
mult $t0, $a0
mflo $t0
add $t1, $t1, $t0
lw $t2, ($t1)
jal $t2
sw $t0, 432($sp)
lw $t0, x_458_ad
sw $t0, 412($sp)
lw $t0, 412($sp)
sw $t0, 416($sp)
lw $t1, 416($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 652($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
la $t3, CellularAutomaton_method
la $s3, out_string_
li $s1, 1000
jal find
addi $t0, $t2, 3
la $t1, CellularAutomaton
li $a0,4
mult $t0, $a0
mflo $t0
add $t1, $t1, $t0
lw $t2, ($t1)
jal $t2
sw $t0, 420($sp)
lw $t0, x_462_ad
sw $t0, 400($sp)
lw $t0, 400($sp)
sw $t0, 404($sp)
lw $t1, 404($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 652($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
la $t3, CellularAutomaton_method
la $s3, out_string_
li $s1, 1000
jal find
addi $t0, $t2, 3
la $t1, CellularAutomaton
li $a0,4
mult $t0, $a0
mflo $t0
add $t1, $t1, $t0
lw $t2, ($t1)
jal $t2
sw $t0, 408($sp)
lw $t0, x_466_ad
sw $t0, 388($sp)
lw $t0, 388($sp)
sw $t0, 392($sp)
lw $t1, 392($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 652($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
la $t3, CellularAutomaton_method
la $s3, out_string_
li $s1, 1000
jal find
addi $t0, $t2, 3
la $t1, CellularAutomaton
li $a0,4
mult $t0, $a0
mflo $t0
add $t1, $t1, $t0
lw $t2, ($t1)
jal $t2
sw $t0, 396($sp)
lw $t0, x_470_ad
sw $t0, 376($sp)
lw $t0, 376($sp)
sw $t0, 380($sp)
lw $t1, 380($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 652($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
la $t3, CellularAutomaton_method
la $s3, out_string_
li $s1, 1000
jal find
addi $t0, $t2, 3
la $t1, CellularAutomaton
li $a0,4
mult $t0, $a0
mflo $t0
add $t1, $t1, $t0
lw $t2, ($t1)
jal $t2
sw $t0, 384($sp)
lw $t0, x_474_ad
sw $t0, 364($sp)
lw $t0, 364($sp)
sw $t0, 368($sp)
lw $t1, 368($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 652($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
la $t3, CellularAutomaton_method
la $s3, out_string_
li $s1, 1000
jal find
addi $t0, $t2, 3
la $t1, CellularAutomaton
li $a0,4
mult $t0, $a0
mflo $t0
add $t1, $t1, $t0
lw $t2, ($t1)
jal $t2
sw $t0, 372($sp)
lw $t1, 648($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
la $t3, CellularAutomaton_method
la $s3, in_int_
li $s1, 1000
jal find
addi $t0, $t2, 3
la $t1, CellularAutomaton
li $a0,4
mult $t0, $a0
mflo $t0
add $t1, $t1, $t0
lw $t2, ($t1)
jal $t2
sw $t0, 360($sp)
lw $t0, 360($sp)
sw $t0, 640($sp)
lw $t0, x_480_ad
sw $t0, 344($sp)
lw $t0, 344($sp)
sw $t0, 348($sp)
lw $t1, 348($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 652($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
la $t3, CellularAutomaton_method
la $s3, out_string_
li $s1, 1000
jal find
addi $t0, $t2, 3
la $t1, CellularAutomaton
li $a0,4
mult $t0, $a0
mflo $t0
add $t1, $t1, $t0
lw $t2, ($t1)
jal $t2
sw $t0, 352($sp)
li $t0, 1
sw $t0, 340($sp)
lw $t2, 640($sp)
lw $t3, 340($sp)
beq $t2, $t3, _equals25
li $t0,0
j _not_equals25
_equals25:
li $t0,1
_not_equals25:
sw $t0, 336($sp)
lw $t0, 336($sp)
sw $t0, 4($sp)
lw $t1, 4($sp)
beq $t1, $zero, LABEL106
lw $t0, x_484_ad
sw $t0, 332($sp)
lw $t0, 332($sp)
sw $t0, 4($sp)
j LABEL107
LABEL106:
li $t0, 2
sw $t0, 328($sp)
lw $t2, 640($sp)
lw $t3, 328($sp)
beq $t2, $t3, _equals26
li $t0,0
j _not_equals26
_equals26:
li $t0,1
_not_equals26:
sw $t0, 324($sp)
lw $t0, 324($sp)
sw $t0, 8($sp)
lw $t1, 8($sp)
beq $t1, $zero, LABEL104
lw $t0, x_488_ad
sw $t0, 320($sp)
lw $t0, 320($sp)
sw $t0, 8($sp)
j LABEL105
LABEL104:
li $t0, 3
sw $t0, 316($sp)
lw $t2, 640($sp)
lw $t3, 316($sp)
beq $t2, $t3, _equals27
li $t0,0
j _not_equals27
_equals27:
li $t0,1
_not_equals27:
sw $t0, 312($sp)
lw $t0, 312($sp)
sw $t0, 12($sp)
lw $t1, 12($sp)
beq $t1, $zero, LABEL102
lw $t0, x_492_ad
sw $t0, 308($sp)
lw $t0, 308($sp)
sw $t0, 12($sp)
j LABEL103
LABEL102:
li $t0, 4
sw $t0, 304($sp)
lw $t2, 640($sp)
lw $t3, 304($sp)
beq $t2, $t3, _equals28
li $t0,0
j _not_equals28
_equals28:
li $t0,1
_not_equals28:
sw $t0, 300($sp)
lw $t0, 300($sp)
sw $t0, 16($sp)
lw $t1, 16($sp)
beq $t1, $zero, LABEL100
lw $t0, x_496_ad
sw $t0, 296($sp)
lw $t0, 296($sp)
sw $t0, 16($sp)
j LABEL101
LABEL100:
li $t0, 5
sw $t0, 292($sp)
lw $t2, 640($sp)
lw $t3, 292($sp)
beq $t2, $t3, _equals29
li $t0,0
j _not_equals29
_equals29:
li $t0,1
_not_equals29:
sw $t0, 288($sp)
lw $t0, 288($sp)
sw $t0, 20($sp)
lw $t1, 20($sp)
beq $t1, $zero, LABEL98
lw $t0, x_500_ad
sw $t0, 284($sp)
lw $t0, 284($sp)
sw $t0, 20($sp)
j LABEL99
LABEL98:
li $t0, 6
sw $t0, 280($sp)
lw $t2, 640($sp)
lw $t3, 280($sp)
beq $t2, $t3, _equals30
li $t0,0
j _not_equals30
_equals30:
li $t0,1
_not_equals30:
sw $t0, 276($sp)
lw $t0, 276($sp)
sw $t0, 24($sp)
lw $t1, 24($sp)
beq $t1, $zero, LABEL96
lw $t0, x_504_ad
sw $t0, 272($sp)
lw $t0, 272($sp)
sw $t0, 24($sp)
j LABEL97
LABEL96:
li $t0, 7
sw $t0, 268($sp)
lw $t2, 640($sp)
lw $t3, 268($sp)
beq $t2, $t3, _equals31
li $t0,0
j _not_equals31
_equals31:
li $t0,1
_not_equals31:
sw $t0, 264($sp)
lw $t0, 264($sp)
sw $t0, 28($sp)
lw $t1, 28($sp)
beq $t1, $zero, LABEL94
lw $t0, x_508_ad
sw $t0, 260($sp)
lw $t0, 260($sp)
sw $t0, 28($sp)
j LABEL95
LABEL94:
li $t0, 8
sw $t0, 256($sp)
lw $t2, 640($sp)
lw $t3, 256($sp)
beq $t2, $t3, _equals32
li $t0,0
j _not_equals32
_equals32:
li $t0,1
_not_equals32:
sw $t0, 252($sp)
lw $t0, 252($sp)
sw $t0, 32($sp)
lw $t1, 32($sp)
beq $t1, $zero, LABEL92
lw $t0, x_512_ad
sw $t0, 248($sp)
lw $t0, 248($sp)
sw $t0, 32($sp)
j LABEL93
LABEL92:
li $t0, 9
sw $t0, 244($sp)
lw $t2, 640($sp)
lw $t3, 244($sp)
beq $t2, $t3, _equals33
li $t0,0
j _not_equals33
_equals33:
li $t0,1
_not_equals33:
sw $t0, 240($sp)
lw $t0, 240($sp)
sw $t0, 36($sp)
lw $t1, 36($sp)
beq $t1, $zero, LABEL90
lw $t0, x_516_ad
sw $t0, 236($sp)
lw $t0, 236($sp)
sw $t0, 36($sp)
j LABEL91
LABEL90:
li $t0, 10
sw $t0, 232($sp)
lw $t2, 640($sp)
lw $t3, 232($sp)
beq $t2, $t3, _equals34
li $t0,0
j _not_equals34
_equals34:
li $t0,1
_not_equals34:
sw $t0, 228($sp)
lw $t0, 228($sp)
sw $t0, 40($sp)
lw $t1, 40($sp)
beq $t1, $zero, LABEL88
lw $t0, x_520_ad
sw $t0, 224($sp)
lw $t0, 224($sp)
sw $t0, 40($sp)
j LABEL89
LABEL88:
li $t0, 11
sw $t0, 220($sp)
lw $t2, 640($sp)
lw $t3, 220($sp)
beq $t2, $t3, _equals35
li $t0,0
j _not_equals35
_equals35:
li $t0,1
_not_equals35:
sw $t0, 216($sp)
lw $t0, 216($sp)
sw $t0, 44($sp)
lw $t1, 44($sp)
beq $t1, $zero, LABEL86
lw $t0, x_524_ad
sw $t0, 212($sp)
lw $t0, 212($sp)
sw $t0, 44($sp)
j LABEL87
LABEL86:
li $t0, 12
sw $t0, 208($sp)
lw $t2, 640($sp)
lw $t3, 208($sp)
beq $t2, $t3, _equals36
li $t0,0
j _not_equals36
_equals36:
li $t0,1
_not_equals36:
sw $t0, 204($sp)
lw $t0, 204($sp)
sw $t0, 48($sp)
lw $t1, 48($sp)
beq $t1, $zero, LABEL84
lw $t0, x_528_ad
sw $t0, 200($sp)
lw $t0, 200($sp)
sw $t0, 48($sp)
j LABEL85
LABEL84:
li $t0, 13
sw $t0, 196($sp)
lw $t2, 640($sp)
lw $t3, 196($sp)
beq $t2, $t3, _equals37
li $t0,0
j _not_equals37
_equals37:
li $t0,1
_not_equals37:
sw $t0, 192($sp)
lw $t0, 192($sp)
sw $t0, 52($sp)
lw $t1, 52($sp)
beq $t1, $zero, LABEL82
lw $t0, x_532_ad
sw $t0, 188($sp)
lw $t0, 188($sp)
sw $t0, 52($sp)
j LABEL83
LABEL82:
li $t0, 14
sw $t0, 184($sp)
lw $t2, 640($sp)
lw $t3, 184($sp)
beq $t2, $t3, _equals38
li $t0,0
j _not_equals38
_equals38:
li $t0,1
_not_equals38:
sw $t0, 180($sp)
lw $t0, 180($sp)
sw $t0, 56($sp)
lw $t1, 56($sp)
beq $t1, $zero, LABEL80
lw $t0, x_536_ad
sw $t0, 176($sp)
lw $t0, 176($sp)
sw $t0, 56($sp)
j LABEL81
LABEL80:
li $t0, 15
sw $t0, 172($sp)
lw $t2, 640($sp)
lw $t3, 172($sp)
beq $t2, $t3, _equals39
li $t0,0
j _not_equals39
_equals39:
li $t0,1
_not_equals39:
sw $t0, 168($sp)
lw $t0, 168($sp)
sw $t0, 60($sp)
lw $t1, 60($sp)
beq $t1, $zero, LABEL78
lw $t0, x_540_ad
sw $t0, 164($sp)
lw $t0, 164($sp)
sw $t0, 60($sp)
j LABEL79
LABEL78:
li $t0, 16
sw $t0, 160($sp)
lw $t2, 640($sp)
lw $t3, 160($sp)
beq $t2, $t3, _equals40
li $t0,0
j _not_equals40
_equals40:
li $t0,1
_not_equals40:
sw $t0, 156($sp)
lw $t0, 156($sp)
sw $t0, 64($sp)
lw $t1, 64($sp)
beq $t1, $zero, LABEL76
lw $t0, x_544_ad
sw $t0, 152($sp)
lw $t0, 152($sp)
sw $t0, 64($sp)
j LABEL77
LABEL76:
li $t0, 17
sw $t0, 148($sp)
lw $t2, 640($sp)
lw $t3, 148($sp)
beq $t2, $t3, _equals41
li $t0,0
j _not_equals41
_equals41:
li $t0,1
_not_equals41:
sw $t0, 144($sp)
lw $t0, 144($sp)
sw $t0, 68($sp)
lw $t1, 68($sp)
beq $t1, $zero, LABEL74
lw $t0, x_548_ad
sw $t0, 140($sp)
lw $t0, 140($sp)
sw $t0, 68($sp)
j LABEL75
LABEL74:
li $t0, 18
sw $t0, 136($sp)
lw $t2, 640($sp)
lw $t3, 136($sp)
beq $t2, $t3, _equals42
li $t0,0
j _not_equals42
_equals42:
li $t0,1
_not_equals42:
sw $t0, 132($sp)
lw $t0, 132($sp)
sw $t0, 72($sp)
lw $t1, 72($sp)
beq $t1, $zero, LABEL72
lw $t0, x_552_ad
sw $t0, 128($sp)
lw $t0, 128($sp)
sw $t0, 72($sp)
j LABEL73
LABEL72:
li $t0, 19
sw $t0, 124($sp)
lw $t2, 640($sp)
lw $t3, 124($sp)
beq $t2, $t3, _equals43
li $t0,0
j _not_equals43
_equals43:
li $t0,1
_not_equals43:
sw $t0, 120($sp)
lw $t0, 120($sp)
sw $t0, 76($sp)
lw $t1, 76($sp)
beq $t1, $zero, LABEL70
lw $t0, x_556_ad
sw $t0, 116($sp)
lw $t0, 116($sp)
sw $t0, 76($sp)
j LABEL71
LABEL70:
li $t0, 20
sw $t0, 112($sp)
lw $t2, 640($sp)
lw $t3, 112($sp)
beq $t2, $t3, _equals44
li $t0,0
j _not_equals44
_equals44:
li $t0,1
_not_equals44:
sw $t0, 108($sp)
lw $t0, 108($sp)
sw $t0, 80($sp)
lw $t1, 80($sp)
beq $t1, $zero, LABEL68
lw $t0, x_560_ad
sw $t0, 104($sp)
lw $t0, 104($sp)
sw $t0, 80($sp)
j LABEL69
LABEL68:
li $t0, 21
sw $t0, 100($sp)
lw $t2, 640($sp)
lw $t3, 100($sp)
beq $t2, $t3, _equals45
li $t0,0
j _not_equals45
_equals45:
li $t0,1
_not_equals45:
sw $t0, 96($sp)
lw $t0, 96($sp)
sw $t0, 84($sp)
lw $t1, 84($sp)
beq $t1, $zero, LABEL66
lw $t0, x_564_ad
sw $t0, 92($sp)
lw $t0, 92($sp)
sw $t0, 84($sp)
j LABEL67
LABEL66:
lw $t0, x_566_ad
sw $t0, 88($sp)
lw $t0, 88($sp)
sw $t0, 84($sp)
LABEL67:
lw $t0, 84($sp)
sw $t0, 80($sp)
LABEL69:
lw $t0, 80($sp)
sw $t0, 76($sp)
LABEL71:
lw $t0, 76($sp)
sw $t0, 72($sp)
LABEL73:
lw $t0, 72($sp)
sw $t0, 68($sp)
LABEL75:
lw $t0, 68($sp)
sw $t0, 64($sp)
LABEL77:
lw $t0, 64($sp)
sw $t0, 60($sp)
LABEL79:
lw $t0, 60($sp)
sw $t0, 56($sp)
LABEL81:
lw $t0, 56($sp)
sw $t0, 52($sp)
LABEL83:
lw $t0, 52($sp)
sw $t0, 48($sp)
LABEL85:
lw $t0, 48($sp)
sw $t0, 44($sp)
LABEL87:
lw $t0, 44($sp)
sw $t0, 40($sp)
LABEL89:
lw $t0, 40($sp)
sw $t0, 36($sp)
LABEL91:
lw $t0, 36($sp)
sw $t0, 32($sp)
LABEL93:
lw $t0, 32($sp)
sw $t0, 28($sp)
LABEL95:
lw $t0, 28($sp)
sw $t0, 24($sp)
LABEL97:
lw $t0, 24($sp)
sw $t0, 20($sp)
LABEL99:
lw $t0, 20($sp)
sw $t0, 16($sp)
LABEL101:
lw $t0, 16($sp)
sw $t0, 12($sp)
LABEL103:
lw $t0, 12($sp)
sw $t0, 8($sp)
LABEL105:
lw $t0, 8($sp)
sw $t0, 4($sp)
LABEL107:
lw $ra, ($sp)
addi $sp, $sp, 652
jr $ra
CellularAutomaton_prompt:
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
sw $ra, 0($sp)
lw $t0, _vacio_ad
sw $t0, 68($sp)
lw $t0, x_592_ad
sw $t0, 56($sp)
lw $t0, 56($sp)
sw $t0, 60($sp)
lw $t1, 60($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 80($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
la $t3, CellularAutomaton_method
la $s3, out_string_
li $s1, 1000
jal find
addi $t0, $t2, 3
la $t1, CellularAutomaton
li $a0,4
mult $t0, $a0
mflo $t0
add $t1, $t1, $t0
lw $t2, ($t1)
jal $t2
sw $t0, 64($sp)
lw $t0, x_596_ad
sw $t0, 44($sp)
lw $t0, 44($sp)
sw $t0, 48($sp)
lw $t1, 48($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 80($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
la $t3, CellularAutomaton_method
la $s3, out_string_
li $s1, 1000
jal find
addi $t0, $t2, 3
la $t1, CellularAutomaton
li $a0,4
mult $t0, $a0
mflo $t0
add $t1, $t1, $t0
lw $t2, ($t1)
jal $t2
sw $t0, 52($sp)
lw $t1, 76($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
la $t3, CellularAutomaton_method
la $s3, in_string_
li $s1, 1000
jal find
addi $t0, $t2, 3
la $t1, CellularAutomaton
li $a0,4
mult $t0, $a0
mflo $t0
add $t1, $t1, $t0
lw $t2, ($t1)
jal $t2
sw $t0, 40($sp)
lw $t0, 40($sp)
sw $t0, 68($sp)
lw $t0, x_602_ad
sw $t0, 24($sp)
lw $t0, 24($sp)
sw $t0, 28($sp)
lw $t1, 28($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 80($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
la $t3, CellularAutomaton_method
la $s3, out_string_
li $s1, 1000
jal find
addi $t0, $t2, 3
la $t1, CellularAutomaton
li $a0,4
mult $t0, $a0
mflo $t0
add $t1, $t1, $t0
lw $t2, ($t1)
jal $t2
sw $t0, 32($sp)
lw $t0, x_604_ad
sw $t0, 20($sp)
lw $s2, 68($sp)
lw $s3, 20($sp)
jal cmploop
move $t0, $a0
sw $t0, 16($sp)
lw $t0, 16($sp)
sw $t0, 4($sp)
lw $t1, 4($sp)
beq $t1, $zero, LABEL108
li $t0, 0
sw $t0, 12($sp)
lw $t0, 12($sp)
sw $t0, 4($sp)
j LABEL109
LABEL108:
li $t0, 1
sw $t0, 8($sp)
lw $t0, 8($sp)
sw $t0, 4($sp)
LABEL109:
lw $ra, ($sp)
addi $sp, $sp, 80
jr $ra
CellularAutomaton_prompt2:
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
sw $ra, 0($sp)
lw $t0, _vacio_ad
sw $t0, 68($sp)
lw $t0, x_613_ad
sw $t0, 56($sp)
lw $t0, 56($sp)
sw $t0, 60($sp)
lw $t1, 60($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 80($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
la $t3, CellularAutomaton_method
la $s3, out_string_
li $s1, 1000
jal find
addi $t0, $t2, 3
la $t1, CellularAutomaton
li $a0,4
mult $t0, $a0
mflo $t0
add $t1, $t1, $t0
lw $t2, ($t1)
jal $t2
sw $t0, 64($sp)
lw $t0, x_617_ad
sw $t0, 44($sp)
lw $t0, 44($sp)
sw $t0, 48($sp)
lw $t1, 48($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 80($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
la $t3, CellularAutomaton_method
la $s3, out_string_
li $s1, 1000
jal find
addi $t0, $t2, 3
la $t1, CellularAutomaton
li $a0,4
mult $t0, $a0
mflo $t0
add $t1, $t1, $t0
lw $t2, ($t1)
jal $t2
sw $t0, 52($sp)
lw $t0, x_621_ad
sw $t0, 32($sp)
lw $t0, 32($sp)
sw $t0, 36($sp)
lw $t1, 36($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 80($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
la $t3, CellularAutomaton_method
la $s3, out_string_
li $s1, 1000
jal find
addi $t0, $t2, 3
la $t1, CellularAutomaton
li $a0,4
mult $t0, $a0
mflo $t0
add $t1, $t1, $t0
lw $t2, ($t1)
jal $t2
sw $t0, 40($sp)
lw $t1, 76($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
la $t3, CellularAutomaton_method
la $s3, in_string_
li $s1, 1000
jal find
addi $t0, $t2, 3
la $t1, CellularAutomaton
li $a0,4
mult $t0, $a0
mflo $t0
add $t1, $t1, $t0
lw $t2, ($t1)
jal $t2
sw $t0, 28($sp)
lw $t0, 28($sp)
sw $t0, 68($sp)
lw $t0, x_625_ad
sw $t0, 20($sp)
lw $s2, 68($sp)
lw $s3, 20($sp)
jal cmploop
move $t0, $a0
sw $t0, 16($sp)
lw $t0, 16($sp)
sw $t0, 4($sp)
lw $t1, 4($sp)
beq $t1, $zero, LABEL110
li $t0, 1
sw $t0, 12($sp)
lw $t0, 12($sp)
sw $t0, 4($sp)
j LABEL111
LABEL110:
li $t0, 0
sw $t0, 8($sp)
lw $t0, 8($sp)
sw $t0, 4($sp)
LABEL111:
lw $ra, ($sp)
addi $sp, $sp, 80
jr $ra
initialize_CellularAutomaton:
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
jal initialize_Board
sw $t0, 4($sp)
lw $t2, 12($sp)
lw $t1, 16($sp)
addi $t1, $t1, 16
sw $t2, ($t1)
lw $t0, 16($sp)
sw $t0, 8($sp)
lw $ra, ($sp)
addi $sp, $sp, 20
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
li $t0, 0
sw $t0, 144($sp)
lw $t0, _vacio_ad
sw $t0, 140($sp)
lw $t0, x_636_ad
sw $t0, 128($sp)
lw $t0, 128($sp)
sw $t0, 132($sp)
lw $t1, 132($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 156($sp)
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
sw $t0, 136($sp)
lw $t0, x_640_ad
sw $t0, 116($sp)
lw $t0, 116($sp)
sw $t0, 120($sp)
lw $t1, 120($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 156($sp)
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
sw $t0, 124($sp)
LABEL116:
lw $t1, 152($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
la $t3, Main_method
la $s3, prompt2_
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
sw $t0, 112($sp)
lw $t0, 112($sp)
sw $t0, 8($sp)
lw $t1, 8($sp)
beq $t1, $zero, LABEL117
li $t0, 1
sw $t0, 108($sp)
lw $t0, 108($sp)
sw $t0, 144($sp)
lw $t1, 152($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
la $t3, Main_method
la $s3, option_
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
sw $t0, 100($sp)
lw $t0, 100($sp)
sw $t0, 140($sp)
lw $a0, CellularAutomaton
li $v0, 9
syscall
la $t1, CellularAutomaton
move $t0, $v0
sw $t1, ($t0)
sw $t0, 88($sp)
lw $t1, 88($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
jal initialize_CellularAutomaton
sw $t0, 84($sp)
lw $t1, 88($sp)
lw $t0, ($t1)
sw $t0, 80($sp)
lw $t0, 140($sp)
sw $t0, 76($sp)
lw $t1, 76($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 92($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 88($sp)
addi $t3, $t1, 4
lw $t3, ($t3)
la $s3, init_
li $s1, 1000
jal find
addi $t0, $t2, 3
lw $t1, 88($sp)
li $a0,4
mult $t0, $a0
mflo $t0
add $t1, $t1, $t0
lw $t2, ($t1)
jal $t2
sw $t0, 92($sp)
lw $t2, 92($sp)
lw $t1, 152($sp)
addi $t1, $t1, 20
sw $t2, ($t1)
lw $t1, 152($sp)
addi $t1, $t1, 20
lw $t0, ($t1)
sw $t0, 72($sp)
lw $t1, 152($sp)
addi $t1, $t1, 20
lw $t0, ($t1)
sw $t0, 64($sp)
lw $t1, 64($sp)
lw $t0, ($t1)
sw $t0, 60($sp)
lw $t1, 64($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 64($sp)
addi $t3, $t1, 4
lw $t3, ($t3)
la $s3, print_
li $s1, 1000
jal find
addi $t0, $t2, 3
lw $t1, 64($sp)
li $a0,4
mult $t0, $a0
mflo $t0
add $t1, $t1, $t0
lw $t2, ($t1)
jal $t2
sw $t0, 68($sp)
LABEL114:
lw $t0, 144($sp)
sw $t0, 12($sp)
lw $t1, 12($sp)
beq $t1, $zero, LABEL115
lw $t1, 152($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
la $t3, Main_method
la $s3, prompt_
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
sw $t0, 16($sp)
lw $t1, 16($sp)
beq $t1, $zero, LABEL112
lw $t1, 152($sp)
addi $t1, $t1, 20
lw $t0, ($t1)
sw $t0, 48($sp)
lw $t1, 48($sp)
lw $t0, ($t1)
sw $t0, 44($sp)
lw $t1, 48($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 48($sp)
addi $t3, $t1, 4
lw $t3, ($t3)
la $s3, evolve_
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
sw $t0, 52($sp)
lw $t1, 152($sp)
addi $t1, $t1, 20
lw $t0, ($t1)
sw $t0, 36($sp)
lw $t1, 36($sp)
lw $t0, ($t1)
sw $t0, 32($sp)
lw $t1, 36($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
lw $t1, 36($sp)
addi $t3, $t1, 4
lw $t3, ($t3)
la $s3, print_
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
sw $t0, 40($sp)
lw $t0, 40($sp)
sw $t0, 16($sp)
j LABEL113
LABEL112:
li $t0, 0
sw $t0, 28($sp)
lw $t0, 28($sp)
sw $t0, 144($sp)
lw $a0, Bool
li $v0, 9
syscall
la $t1, Bool
move $t0, $v0
sw $t1, ($t0)
sw $t0, 20($sp)
lw $t2, 144($sp)
lw $t1, 20($sp)
addi $t1, $t1, 4
sw $t2, ($t1)
lw $t0, 20($sp)
sw $t0, 16($sp)
LABEL113:
j LABEL114
LABEL115:
j LABEL116
LABEL117:
lw $t0, 152($sp)
sw $t0, 4($sp)
lw $ra, ($sp)
addi $sp, $sp, 156
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
sw $ra, 0($sp)
lw $t1, 16($sp)
addi $sp, $sp, -4
sw $t1, 0($sp)
jal initialize_CellularAutomaton
sw $t0, 4($sp)
lw $t2, 12($sp)
lw $t1, 16($sp)
addi $t1, $t1, 20
sw $t2, ($t1)
lw $t0, 16($sp)
sw $t0, 8($sp)
lw $ra, ($sp)
addi $sp, $sp, 20
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
la $a0, x_76
jal save_string
sw $a1, x_76_ad
la $a0, x_90
jal save_string
sw $a1, x_90_ad
la $a0, x_98
jal save_string
sw $a1, x_98_ad
la $a0, x_110
jal save_string
sw $a1, x_110_ad
la $a0, x_125
jal save_string
sw $a1, x_125_ad
la $a0, x_137
jal save_string
sw $a1, x_137_ad
la $a0, x_154
jal save_string
sw $a1, x_154_ad
la $a0, x_164
jal save_string
sw $a1, x_164_ad
la $a0, x_171
jal save_string
sw $a1, x_171_ad
la $a0, x_184
jal save_string
sw $a1, x_184_ad
la $a0, x_191
jal save_string
sw $a1, x_191_ad
la $a0, x_204
jal save_string
sw $a1, x_204_ad
la $a0, x_215
jal save_string
sw $a1, x_215_ad
la $a0, x_228
jal save_string
sw $a1, x_228_ad
la $a0, x_239
jal save_string
sw $a1, x_239_ad
la $a0, x_252
jal save_string
sw $a1, x_252_ad
la $a0, x_259
jal save_string
sw $a1, x_259_ad
la $a0, x_270
jal save_string
sw $a1, x_270_ad
la $a0, x_278
jal save_string
sw $a1, x_278_ad
la $a0, x_287
jal save_string
sw $a1, x_287_ad
la $a0, x_296
jal save_string
sw $a1, x_296_ad
la $a0, x_305
jal save_string
sw $a1, x_305_ad
la $a0, x_314
jal save_string
sw $a1, x_314_ad
la $a0, x_323
jal save_string
sw $a1, x_323_ad
la $a0, x_332
jal save_string
sw $a1, x_332_ad
la $a0, x_344
jal save_string
sw $a1, x_344_ad
la $a0, x_352
jal save_string
sw $a1, x_352_ad
la $a0, x_355
jal save_string
sw $a1, x_355_ad
la $a0, x_357
jal save_string
sw $a1, x_357_ad
la $a0, x_360
jal save_string
sw $a1, x_360_ad
la $a0, x_386
jal save_string
sw $a1, x_386_ad
la $a0, x_390
jal save_string
sw $a1, x_390_ad
la $a0, x_394
jal save_string
sw $a1, x_394_ad
la $a0, x_398
jal save_string
sw $a1, x_398_ad
la $a0, x_402
jal save_string
sw $a1, x_402_ad
la $a0, x_406
jal save_string
sw $a1, x_406_ad
la $a0, x_410
jal save_string
sw $a1, x_410_ad
la $a0, x_414
jal save_string
sw $a1, x_414_ad
la $a0, x_418
jal save_string
sw $a1, x_418_ad
la $a0, x_422
jal save_string
sw $a1, x_422_ad
la $a0, x_426
jal save_string
sw $a1, x_426_ad
la $a0, x_430
jal save_string
sw $a1, x_430_ad
la $a0, x_434
jal save_string
sw $a1, x_434_ad
la $a0, x_438
jal save_string
sw $a1, x_438_ad
la $a0, x_442
jal save_string
sw $a1, x_442_ad
la $a0, x_446
jal save_string
sw $a1, x_446_ad
la $a0, x_450
jal save_string
sw $a1, x_450_ad
la $a0, x_454
jal save_string
sw $a1, x_454_ad
la $a0, x_458
jal save_string
sw $a1, x_458_ad
la $a0, x_462
jal save_string
sw $a1, x_462_ad
la $a0, x_466
jal save_string
sw $a1, x_466_ad
la $a0, x_470
jal save_string
sw $a1, x_470_ad
la $a0, x_474
jal save_string
sw $a1, x_474_ad
la $a0, x_480
jal save_string
sw $a1, x_480_ad
la $a0, x_484
jal save_string
sw $a1, x_484_ad
la $a0, x_488
jal save_string
sw $a1, x_488_ad
la $a0, x_492
jal save_string
sw $a1, x_492_ad
la $a0, x_496
jal save_string
sw $a1, x_496_ad
la $a0, x_500
jal save_string
sw $a1, x_500_ad
la $a0, x_504
jal save_string
sw $a1, x_504_ad
la $a0, x_508
jal save_string
sw $a1, x_508_ad
la $a0, x_512
jal save_string
sw $a1, x_512_ad
la $a0, x_516
jal save_string
sw $a1, x_516_ad
la $a0, x_520
jal save_string
sw $a1, x_520_ad
la $a0, x_524
jal save_string
sw $a1, x_524_ad
la $a0, x_528
jal save_string
sw $a1, x_528_ad
la $a0, x_532
jal save_string
sw $a1, x_532_ad
la $a0, x_536
jal save_string
sw $a1, x_536_ad
la $a0, x_540
jal save_string
sw $a1, x_540_ad
la $a0, x_544
jal save_string
sw $a1, x_544_ad
la $a0, x_548
jal save_string
sw $a1, x_548_ad
la $a0, x_552
jal save_string
sw $a1, x_552_ad
la $a0, x_556
jal save_string
sw $a1, x_556_ad
la $a0, x_560
jal save_string
sw $a1, x_560_ad
la $a0, x_564
jal save_string
sw $a1, x_564_ad
la $a0, x_566
jal save_string
sw $a1, x_566_ad
la $a0, x_592
jal save_string
sw $a1, x_592_ad
la $a0, x_596
jal save_string
sw $a1, x_596_ad
la $a0, x_602
jal save_string
sw $a1, x_602_ad
la $a0, x_604
jal save_string
sw $a1, x_604_ad
la $a0, x_613
jal save_string
sw $a1, x_613_ad
la $a0, x_617
jal save_string
sw $a1, x_617_ad
la $a0, x_621
jal save_string
sw $a1, x_621_ad
la $a0, x_625
jal save_string
sw $a1, x_625_ad
la $a0, x_636
jal save_string
sw $a1, x_636_ad
la $a0, x_640
jal save_string
sw $a1, x_640_ad
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

