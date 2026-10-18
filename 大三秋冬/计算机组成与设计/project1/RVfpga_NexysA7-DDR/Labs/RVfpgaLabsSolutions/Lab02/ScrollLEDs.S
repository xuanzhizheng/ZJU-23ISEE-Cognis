// ScrollLEDs.S
// Description: Scrolls an increasing number of LEDs (starting with 1) from left-to-right 
// and then right-to-left on the LEDs. Once all the LEDs are lit, it starts over.

// memory-mapped I/O addresses
# GPIO_SWs   = 0x80001400
# GPIO_LEDs  = 0x80001404
# GPIO_INOUT = 0x80001408


#define DELAY 0x500000               // Define the DELAY 
#define MAX  0x10000
#define MSB  0x8000
#define LSB  0x0001
.globl main
main:

  li   t0, 0x80001400       # base address of GPIO memory-mapped registers
  li   t1, 0xFFFF           # set direction of GPIOs
                            # upper half = switches (inputs)  (=0)
                            # lower half = outputs (LEDs)     (=1)
  sw   t1, 8(t0)            # GPIO_INOUT = 0xFFFF

  li   t3, MAX              # t3 = 2^16 (value just beyond left-most LED lit)
  li   t4, MSB              # t3 = 2^15: msb of 16-bit value is 1 (left-most LED lit)
  li   t5, LSB              # t4 = lsb of 16-bit value is 1 (right-most LED lit)

Loop:
  addi t1, zero, 1          # t1 = 1

ShiftLeft:
  sw   t1, 4(t0)            # GPIO_LEDs = t1

  li   t2, DELAY            # t2 = delay amount
Repeat1:
  addi t2, t2, -1           # decrement delay amount
  bne  t2, zero, Repeat1    # if delay amount not 0, loop

  slli t1, t1, 1            # shift t1 left 1 bit
  and  t2, t1, t3           # Has value passed left-most LED? 
  beq  t2, zero, ShiftLeft  # If not, continue

  srli t1, t1, 1            # shift right 1 bit
  and  t2, t1, t5           # is lsb lit? (already know msb is lit)
  bne  t2, zero, Loop       # all LEDs lit - restart at beginning (val = 1)

  srli t1, t1, 1            # otherwise, shift value right 1 bit and insert 1 in msb (16-bit value)
  or   t1, t1, t4

ShiftRight:
  sw   t1, 4(t0)            # GPIO_LEDs = t1

  li   t2, DELAY            # t2 = delay amount
Repeat2:
  addi t2, t2, -1           # decrement delay amount
  bne  t2, zero, Repeat2    # if delay amount not 0, loop

  and  t2, t1, t5           # check if lsb lit
  bne  t2, zero, ShiftLeft  # if lsb lit (right-most LED reached) start shifting left
  srli t1, t1, 1            # shift value right 1 bit
  j    ShiftRight           # continue shifting right


