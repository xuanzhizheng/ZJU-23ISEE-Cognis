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

li t3, 0xEEEEEEEE 
li t4, 0x1 

REPEAT: 
   srl t0, t3, t4 
   INSERT_NOPS_7 
   sra t1, t3, t4 
   INSERT_NOPS_7 
   sll t2, t3, t4 
   INSERT_NOPS_6 
   beq  zero, zero, REPEAT # Repeat the loop 
