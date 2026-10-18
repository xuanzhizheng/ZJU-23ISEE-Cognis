.globl main

.equ N, 15

.data
input: .word 7

.bss
fact: .space 4

.text
main:
    la t0, input
    lw t0, (t0)
    add t1, zero, 1

    ble t0, t1, ELSE
    add t2, t0, -1
    NEXT:
    ble t2, t1, END
    mul t0, t0, t2
    add t2, t2, -1
    j NEXT

    ELSE:
    mv t0, t1

    END:
    la t2, fact
    sw t0, (t2)

    j .
.end