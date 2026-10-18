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
#.section .ram
A: .space 4

.text

Test_Assembly:

# Register t3 is also called register 28 (x28)
la t0, A					# t0 = addr(A)
li t1, 0x1					# t1 = 1
sw t1, (t0)					# A[0] = 1
li t1, 0x0
li t3, 0x1
li t4, 0x0
li t5, 0x0
li t6, 0xFFFF

REPEAT:
    beq t6, zero, OUT     	# Stay in the loop?
	INSERT_NOPS_4
	lw t1, (t0)
	add t3, t3, t1          # t3 = t3 + t1
	INSERT_NOPS_4
	li t1, 0x0
	li t3, 0x1
   	add t6, t6, -1
	add t4, t4, 0x1
	add t5, t5, 0x1
	and zero,t4,t5
    j REPEAT
OUT:

.end