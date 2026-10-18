.globl main

.equ N, 12

.data
A: .word 0,1,2,7,-8,4,5,12,11,-2,6,3
countB: .word 0

.bss
B: .space 4*N

.text
main:
    la t0, A
    la t1, B
    add t3, zero, zero
    add t4, zero, N
    add t6, zero, zero
    WHILE:
        beq t4, zero, DONE      # if a = b, go to DONE
        lw t5, (t0)
        add t0, t0, 4
        ble t5, zero, NEXT      # Less or equal to 0 ?
        and t2, t5, 1
        bne t2, zero, NEXT      # Even or odd ? 
        sw t5, (t1)
        add t1, t1, 4
        add t6, t6, 1
        NEXT:
        add t4, t4, -1
        j WHILE
    DONE:
    la t0, countB
    sw t6, (t0)
    j .
.end