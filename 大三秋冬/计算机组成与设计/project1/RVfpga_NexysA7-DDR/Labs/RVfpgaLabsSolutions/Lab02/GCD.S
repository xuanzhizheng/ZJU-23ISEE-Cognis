.globl main

.data
A: .word 5
B: .word 15

.bss
gcd: .space 4


.text
main:
    la t0, A
    lw t0, (t0)
    la t1, B
    lw t1, (t1)
    WHILE:
        beq t0, t1, DONE    # if a = b, go to DONE
        ble t0, t1, ELSE    # if a <= b, go to ELSE
        sub t0,t0,t1        # a = (a-b)
        j WHILE
        ELSE:
        sub t1,t1,t0        # b = (b-a)
        j WHILE
    DONE:
    la t2, gcd
    sw t0, (t2)             # store result in gcd
    j .
.end