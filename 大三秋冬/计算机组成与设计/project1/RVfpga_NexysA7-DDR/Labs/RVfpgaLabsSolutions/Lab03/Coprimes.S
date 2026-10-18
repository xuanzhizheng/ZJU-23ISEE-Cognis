.globl main

.equ M, 6

.data
D: .word 3,5,0, 6,18,0, 15,45,0, 13,10,0, 24,3,0, 24,35,0

.text
gcd:
    WHILE:
        beq a0, a1, DONE    # if a = b, go to DONE
        ble a0, a1, ELSE    # if a <= b, go to ELSE
        sub a0,a0,a1        # a = (a-b)
        j WHILE
        ELSE:
        sub a1,a1,a0        # b = (b-a)
        j WHILE
    DONE:
    ret


check_coprimes:
    add sp, sp, -32
    sw s1, 0(sp)
    sw s3, 4(sp)
    sw s4, 8(sp)
    sw s5, 12(sp)
    sw ra, 16(sp)
    sw s2, 20(sp)

    mv s4, a0               # address of vector
    mv s5, a1               # number of pair checked

    add s2, zero, 12
    mul s5, s2, s5
    add s4, s4, s5
    lw a0, (s4)
    add s4, s4, 4
    lw a1, (s4)
    jal gcd

    add s4, s4, 4
    add t0, zero, 1
    bne a0, t0, c_else
    add t0, zero, 2
    sw t0, (s4)
    j end_c_if

    c_else:
    add t0, zero, 1
    sw t0, (s4)

    end_c_if:

    lw s1, 0(sp)
    lw s3, 4(sp)
    lw s4, 8(sp)
    lw s5, 12(sp)
    lw ra, 16(sp)
    lw s2, 20(sp)
    add sp, sp, 32
    ret


main:
    add sp, sp, -32
    sw s1, 0(sp)
    sw s2, 4(sp)
    sw s3, 8(sp)
    sw s4, 12(sp)
    sw ra, 16(sp)

    la s1, D
    add s2, zero, M
    add s3, zero, zero

    loop1:
        bge s3, s2, endloop1
        mv a0, s1
        mv a1, s3
        jal check_coprimes
        add s3, s3, 1
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