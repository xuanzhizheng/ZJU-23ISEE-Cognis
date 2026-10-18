// FlashSwitchesToLEDs.S
// Description: Flashes the value of the switches on the LEDs.

// memory-mapped I/O addresses
# GPIO_SWs   = 0x80001400
# GPIO_LEDs  = 0x80001404
# GPIO_INOUT = 0x80001408

#define DELAY 0x1000000               // Define the DELAY 

.globl main
main:

  li t0, 0x80001400       # base address of GPIO memory-mapped registers
  li t1, 0xFFFF           # set direction of GPIOs
                          # upper half = switches (inputs)  (=0)
                          # lower half = outputs (LEDs)     (=1)
  sw t1, 8(t0)            # GPIO_INOUT = 0xFFFF

Loop:
  lw   t1, 0(t0)          # read switches: t1 = GPIO_SWs
  srli t1, t1, 16         # shift val to the right by 16 bits
  sw   t1, 4(t0)          # write value to LEDs: GPIO_LEDs = t1
  li   t2, DELAY          # delay amount for flashing LEDs  
Repeat1:
  addi t2, t2, -1         # decrement delay amount
  bne  t2, zero, Repeat1  # if delay amount not 0, loop

  sw zero, 4(t0)          # LEDs = 0 (off)
  li t2, DELAY 
Repeat2:
  addi t2, t2, -1         # decrement delay amount
  bne  t2, zero, Repeat2  # if delay amount not 0, loop

  j    Loop               # repeat loop