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

li x28, 0xFFFF
li x29, 0xE
li x30, 0xFFFF
li x31, 0xFF

add a1, zero, 1
add a2, zero, 1
add a3, zero, 1
add a4, zero, 1
add a5, zero, 1

REPEAT:
   div a6, x28, x29
   div a7, x31, x29
   add x30, x30, -1
   INSERT_NOPS_5
   and zero,t4,t5
   bne x30, zero, REPEAT    # Repeat the loop

ret

.end