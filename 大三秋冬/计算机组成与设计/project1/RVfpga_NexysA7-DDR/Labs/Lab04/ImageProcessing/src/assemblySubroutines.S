.globl ColourToGrey_Pixel

.text

ColourToGrey_Pixel:

    li x28, 306
    mul a0, a0, x28

    li x28, 601
    mul a1, a1, x28

    li x28, 117
    mul a2, a2, x28

    add a0, a0, a1
    add a0, a0, a2

    srl a0, a0, 10

  	ret

.end

