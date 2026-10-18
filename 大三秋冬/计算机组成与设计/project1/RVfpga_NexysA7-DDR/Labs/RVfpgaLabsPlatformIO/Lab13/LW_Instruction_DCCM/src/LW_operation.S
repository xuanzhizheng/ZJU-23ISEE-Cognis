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

.section .midccm
#.data
A: .space 8


.text

main:

# Register t3 is also called register 28 (x28)
la t0, A					# t0 = addr(A)
li t1, 0x2					# t1 = 2
sw t1, (t0)					# A[0] = 2
add t1,t1,6				    # t1 = 8
sw t1, 4(t0)				# A[1] = 8
INSERT_NOPS_9

REPEAT:
	lw t1, (t0)
	INSERT_NOPS_9
	INSERT_NOPS_4
	lw t1, 4(t0)
	INSERT_NOPS_10
	INSERT_NOPS_4
	beq  zero, zero, REPEAT	# Repeat the loop

.end
