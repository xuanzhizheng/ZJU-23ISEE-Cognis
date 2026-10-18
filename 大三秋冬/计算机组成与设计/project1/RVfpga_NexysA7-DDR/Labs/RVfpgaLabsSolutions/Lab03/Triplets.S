.globl main


.equ N, 12
.equ L, N/4
.equ M, N/3

.data
    A:    .word 0,1,-2,3,-4,5,-6,7,-8,9,10,-11


.bss
    B:    .space M*4


.text

abs:
    bge a0, zero, pos
    add a1, zero, -1
    mul a0, a0, a1
    pos:
    ret

restriplet:
    add sp, sp, -32
    sw s1, 0(sp)
    sw s3, 4(sp)
    sw s4, 8(sp)
    sw s5, 12(sp)
    sw ra, 16(sp)

    sll a1, a1, 2
    add s1, a0, a1
    add s3, zero, L
    add s4, zero, zero
    add s5, zero, zero

    loop2:
        beq s3, zero, endloop2
        lw s5, (s1)
        add s4, s4, s5
        add s1, s1, 4
        add s3, s3, -1
        j loop2
    endloop2:

    mv a0, s4
    jal abs

    lw s1, 0(sp)
    lw s3, 4(sp)
    lw s4, 8(sp)
    lw s5, 12(sp)
    lw ra, 16(sp)
    add sp, sp, 32
    ret


main:
    add sp, sp, -32
    sw s1, 0(sp)
    sw s2, 4(sp)
    sw s3, 8(sp)
    sw s4, 12(sp)
    sw ra, 16(sp)

    la s1, A
    la s2, B
    add s3, zero, M
    add s4, zero, zero

    loop1:
        beq s3, zero, endloop1
        mv a0, s1
        mv a1, s4
        jal restriplet
        sw a0, (s2)
        add s2, s2, 4
        add s3, s3, -1
        add s4, s4, 3
        j loop1
    endloop1:

    lw s1, 0(sp)
    lw s2, 4(sp)
    lw s3, 8(sp)
    lw s4, 12(sp)
    lw ra, 16(sp)
    add sp, sp, 32
    ret


.end
