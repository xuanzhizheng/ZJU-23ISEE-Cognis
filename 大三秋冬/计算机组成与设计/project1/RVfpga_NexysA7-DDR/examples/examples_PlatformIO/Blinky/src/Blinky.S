#define GPIO_LEDs   0x80001404
#define GPIO_INOUT  0x80001408

#define DELAY 0x1000000               /* Define the DELAY */

.globl main
main:

        li x28, 0xFFFF
        li a0, GPIO_INOUT
        sw x28, 0(a0)                # Write the Enable Register

        li   t1, DELAY               # Set timer value to control blink speed

        li   t0, 0

bl1:
        li   a0, GPIO_LEDs
        sw   t0, 0(a0)               # Write to LEDs
        xori t0, t0, 1               # invert LED
        and  t2, zero, zero          # Reset timer
 
time1:                               # Delay loop
        addi t2, t2, 1
        bne  t1, t2, time1
        j    bl1                
