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


.globl Test_Assembly

.text

Test_Assembly: 

#li t2, 0x000                  # Enable Branch Predictor
li t2, 0x008                  # Disable Branch Predictor
csrrs t1, 0x7F9, t2
//INSERT_NOPS_2

li t3, 0xFFFF
li t4, 0x1
li t5, 0x0
li t6, 0x0

LOOP:
   add t5, t5, 1
   INSERT_NOPS_2
   beq t3, t4, OUT
   INSERT_NOPS_2
   add t4, t4, 1
   INSERT_NOPS_2
   beq t3, t3, LOOP
   INSERT_NOPS_2
OUT:
INSERT_NOPS_8

.end
