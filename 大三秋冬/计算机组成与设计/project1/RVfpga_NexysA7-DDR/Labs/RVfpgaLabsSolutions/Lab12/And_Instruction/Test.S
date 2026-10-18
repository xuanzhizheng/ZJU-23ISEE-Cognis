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

li t3, 0xFC                # t3 = 0xFC 
li t4, 0x7                 # t4 = 0x7 

REPEAT: 
   INSERT_NOPS_10 
   and t3, t3, t4          # t3 = t3 & t4 
   INSERT_NOPS_10 
   li t3, 0xFC             # t3 = 0xFC 
   add t4, t4, 0x7
   beq  zero, zero, REPEAT # Repeat the loop 

