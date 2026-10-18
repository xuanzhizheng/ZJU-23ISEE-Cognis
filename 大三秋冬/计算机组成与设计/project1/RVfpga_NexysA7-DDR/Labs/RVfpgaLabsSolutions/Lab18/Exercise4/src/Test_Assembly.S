.globl dotproduct_hwimpl

.text

dotproduct_hwimpl:

  loop: beq a0, zero, endloop
    lw t3, (a1)
    lw t4, (a2)

    .word 0x11ce8f53

    mv t3, t5
    lw t4, (a3)

    .word 0x01ce8f53

    sw t5, (a3)

    add a0, a0, -1
    add a1, a1, 4
    add a2, a2, 4

    j loop

endloop:

  	ret

.end
