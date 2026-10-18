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

   INSERT_NOPS_5
   INSERT_NOPS_6

   li t6, 0x10000

REPEAT:
   add t6, t6, -1

   add t0, t0, t0
   add t1, t1, t1
   add t2, t2, t2
   add t3, t3, t3
   add t4, t4, t4
   add t5, t5, t5
   add t6, t6, t6
   add a7, a7, a7
   add t0, t0, t0
   add t2, t2, t2
   add t1, t1, t1
   add t3, t3, t3
   add t4, t4, t4
   add t6, t6, t6
   add t5, t5, t5
   add a7, a7, a7

   INSERT_NOPS_8
   INSERT_NOPS_8
   
   INSERT_NOPS_8
   INSERT_NOPS_8
   INSERT_NOPS_8
   INSERT_NOPS_8

   bne t6, zero, REPEAT    # Repeat the loop

ret

.end