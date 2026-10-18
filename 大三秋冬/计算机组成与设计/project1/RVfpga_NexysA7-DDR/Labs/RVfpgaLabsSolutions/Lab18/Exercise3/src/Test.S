#define INSERT_NOPS_1	   nop;
#define INSERT_NOPS_2	   nop; INSERT_NOPS_1
#define INSERT_NOPS_3	   nop; INSERT_NOPS_2
#define INSERT_NOPS_4	   nop; INSERT_NOPS_3
#define INSERT_NOPS_5	   nop; INSERT_NOPS_4
#define INSERT_NOPS_6	   nop; INSERT_NOPS_5
#define INSERT_NOPS_7	   nop; INSERT_NOPS_6
#define INSERT_NOPS_8	   nop; INSERT_NOPS_7
#define INSERT_NOPS_9	   nop; INSERT_NOPS_8
#define INSERT_NOPS_10	   nop; INSERT_NOPS_9

.globl main 

main: 

li t3, 0x40800000  
li t4, 0x40000000 
li t6, 0x800000 

li a3, 20
li a4, 4

REPEAT: 

INSERT_NOPS_4 
add t3, t3, t6
.word 0x01ce8f53		# fadd.s 0000000 | 11100 | 11101 | 000 | 11110 | 1010011 
sub t3, t3, t6

INSERT_NOPS_4 
.word 0x11ce8f53		# fmul.s 0001000 | 11100 | 11101 | 000 | 11110 | 1010011 

INSERT_NOPS_4 
.word 0x19ce8f53		# fdiv.s 0001100 | 11100 | 11101 | 000 | 11110 | 1010011 

INSERT_NOPS_4 
div a5, a3, a4          # just to confirm that div keeps working alright 

INSERT_NOPS_10 

beq zero, zero, REPEAT # Repeat the loop 

.end