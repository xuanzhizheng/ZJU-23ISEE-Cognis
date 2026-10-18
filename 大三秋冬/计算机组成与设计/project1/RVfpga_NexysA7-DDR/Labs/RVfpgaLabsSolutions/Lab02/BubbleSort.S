.globl main

.equ N, 15

.data
V: .word 0,1,2,7,9,-8,4,25,7,5,-12,11,-2,11,17

.text
main:
    REPEAT:
        la t6, V
        add t0, zero, zero
        add t4, zero, N-1
        WHILE:
            beq t4, zero, DONE
            lw t1, (t6)
            lw t3, 4(t6)
            ble t1, t3, NoSwap
            sw t3, (t6)
            sw t1, 4(t6)
            add t0, zero, 1
            NoSwap:
            add t6, t6, 4
            add t4, t4, -1
            j WHILE
        DONE:
        beq t0, zero, OUT
        j REPEAT
    OUT:
    j .
.end