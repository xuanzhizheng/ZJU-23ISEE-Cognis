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

li t2, 0x008                  # Disable Branch Predictor
csrrs t1, 0x7F9, t2

li x28, 0x1
li x29, 0x2
li x30, 0x4
li x31, 0x1
 
REPEAT:
   INSERT_NOPS_2
   mul x28, x29, x29
   add x30, x30, x31
   INSERT_NOPS_4
   add x29, x29, 1
   INSERT_NOPS_4
   beq  zero, zero, REPEAT # Repeat the loop

.end