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

.section .midccm
D: .space 1000

.text
Test_Assembly:

li t2, 0x000
csrrs t1, 0x7F9, t2


// Initialize array
la t4, D
li t0, 1000
la t6, D
add t6, t6, t0
li t5, 0
REPEAT_Init:
   sw t5, (t4)
   add t5, t5, 1
   add t4, t4, 4
   bne  t4, t6, REPEAT_Init    # Repeat the loop


// Access array
la t4, D
li t5, 50
li t0, 1000
la t6, D
add t6, t6, t0
li t5, 1
REPEAT_Access:
   lw t3, (t4)
   add t3, t3, t5
   sw t3, (t4)
   add t4, t4, 4 
   INSERT_NOPS_10
   INSERT_NOPS_10
   bne  t4, t6, REPEAT_Access    # Repeat the loop


.end