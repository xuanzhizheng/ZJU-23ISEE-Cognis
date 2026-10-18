.globl main

.equ N, 10

.data
A: .word 0,1,2,7,-8,4,5,-12,11,-2
B: .word 0,1,2,7,-8,4,5,12,-11,-2

.bss
C: .space 4*N

.text
main:
    la t0, A
    la t1, B
    add t1, t1, 4*(N-1)
    la t2, C
    add t3, zero, -1
    add t4, zero, N
    WHILE:
        beq t4, zero, DONE
        lw t5, (t0)
        lw t6, (t1)
        add t5, t5, t6
        bge t5, zero, POS
        mul t5, t5, t3
        POS:
        sw t5, (t2)
        add t0, t0, 4
        add t1, t1, -4
        add t2, t2, 4
        add t4, t4, -1
        j WHILE
    DONE:
    j .
.end
