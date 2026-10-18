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

.data
D: .word 11

.text
Test_Assembly:

la x29, D

li x30, 0xFFFF

add a1, zero, 1
add a2, zero, 1
add a3, zero, 1
add a4, zero, 1
add a5, zero, 1

REPEAT:
   lw x28, (x29)
   add x30, x30, -1
   add a1, a1, 1
   add a2, a2, 1
   add a3, a3, 1
   add a4, a4, 1
   add a5, a5, 1
   bne x30, zero, REPEAT    # Repeat the loop

ret

.end