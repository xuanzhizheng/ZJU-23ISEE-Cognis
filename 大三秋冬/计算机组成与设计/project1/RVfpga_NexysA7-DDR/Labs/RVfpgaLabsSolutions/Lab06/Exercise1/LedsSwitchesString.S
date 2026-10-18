#define GPIO_SWs    0x80001400
#define GPIO_LEDs   0x80001404
#define GPIO_INOUT  0x80001408


.globl main
main:

li t0, 0xF0
li t5, 10000000

li  a0,  GPIO_INOUT
li  x29, 0x0000FFFF
sw  x29, 0(a0)

next:
    li  a1, GPIO_SWs                    # Read the Switches
    lw  t1, 0(a1)

    srl t1, t1, 16
    and t2, t1, 1                       # Check Switch[0]. If ON, fast count; if OFF, slow count
    beq t2, zero, slow
    li  t5, 1000000
    beq zero, zero, fast
    slow: li t5, 10000000
    fast:


    and t2, t1, 2                       # Check Switch[1]. If ON, right-left; if OFF, left-right

    beq t2, zero, right
    sll t0, t0, 1
    li  t3, 0xF00000
    bne t0, t3, not_reset
    li t0, 0xF
    not_reset:
    beq zero, zero, continue_count

    right:
    srl t0, t0, 1
    li  t3, 0xF
    bne t0, t3, continue_count
    li t0, 0xF00000

    continue_count:

    srl t3, t0, 4
    li  a0, GPIO_LEDs                   # Write the LEDs
    sw  t3, 0(a0)
 

    add  t3, zero, t5
    delay:
        add t3, t3, -1
        bge t3, zero, delay


    beq zero, zero, next                # infinite loop

.end
