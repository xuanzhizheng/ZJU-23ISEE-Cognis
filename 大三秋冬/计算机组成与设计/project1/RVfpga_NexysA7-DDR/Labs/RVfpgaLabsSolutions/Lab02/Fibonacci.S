.globl main

.equ N, 12

.bss
V: .space 4*N

.text
main:
    la t0, V
    add t1, zero, N-2
    add t2, zero, zero
    add t3, zero, 1
    sw t2, (t0)                 # V(i)
    add t0, t0, 4
    sw t3, (t0)                 # V(i+1)
    WHILE:
        beq t1, zero, DONE      # if a = b, go to DONE
        add t4, t3, t2          # V(i+2)=V(i+1)+V(i)
        add t0, t0, 4
        sw t4, (t0)
        mv t2, t3               # Update V(i)
        mv t3, t4               # Update V(i+1)
        add t1, t1, -1
        j WHILE
    DONE:
    j .
.end