.globl ColourToGrey


//.equ N,256
//.equ M,256
.equ N,128
.equ M,128


ColourToGrey:
        addi    sp,sp,-32
        sw  ra, (sp)
        sw  s2, 4(sp)
        sw  s3, 8(sp)
        sw  s4, 12(sp)
        sw  s5, 16(sp)
        sw  s6, 20(sp)

        add s2, a0, zero
        add s3, a1, zero

        add s4, zero, zero

        add s5, zero, N
        add s6, zero, M

L0:
        bge s4, s5, L1

        add s7, zero, zero

L2:
        bge s7, s6, L3

        lb a0, (s2)
        and a0, a0, 0xFF
        add s2, s2, 1

        lb a1, (s2)
        and a1, a1, 0xFF
        add s2, s2, 1

        lb a2, (s2)
        and a2, a2, 0xFF
        add s2, s2, 1

        jal ColourToGrey_Pixel

        sb a0, (s3)
        add s3, s3, 1

        add s7, s7, 1
        j L2

L3:
        add s4, s4, 1
        j L0

L1:
        lw  ra, (sp)
        lw  s2, 4(sp)
        lw  s3, 8(sp)
        lw  s4, 12(sp)
        lw  s5, 16(sp)
        lw  s6, 20(sp)
        addi    sp,sp,32
        ret

.end


