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
A: .space 4000

.text

main:

la t0, A					# t0 = addr(A)
li t1, 0x2					# t1 = 2
li t2, 1000					# t2 = 1000

INSERT_NOPS_10

REPEAT:
	sw t1, (t0)
	INSERT_NOPS_10
	lw t1, (t0)
	INSERT_NOPS_10
	add t1,t1,5
	add t0,t0,0x04
	add t2,t2,-1
	INSERT_NOPS_10
	bne  t2, zero, REPEAT	# Repeat the loop
    nop
	nop

.end
