.globl main


.equ N, 6

.data
    A:    .word 32, 64, 56, 128, 16, 48


.bss
    B:    .space (N-1)*4


.text

myFilter:

    and t0, a0, 0xF
    bne t0, zero, condFalse
    ble a1, a0, condFalse
    add a0, zero, 1
    ret
    condFalse:
    add a0, zero, zero
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
    add s3, zero, N-1
    add s4, zero, 1

    loop1:
        beq s3, zero, endloop1
        lw a0, (s1)
        lw a1, 4(s1)
        jal myFilter
        bne a0, s4, endif1
        lw t0, (s1)
        lw t1, 4(s1)
        add t0, t0, t1
        add t0, t0, 2
        sw t0, (s2)
        add s2, s2, 4
        endif1:
        add s1, s1, 4
        add s3, s3, -1
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
