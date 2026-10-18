// DisplayInverse.S
// Description: Displays the inverse value of the switches on the LEDs.

// memory-mapped I/O addresses
# GPIO_SWs   = 0x80001400
# GPIO_LEDs  = 0x80001404
# GPIO_INOUT = 0x80001408

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
  xori t1, t1, -1         # inverse bits
  sw   t1, 4(t0)          # write inverted value to LEDs: GPIO_LEDs = t1
  j    Loop               # repeat loop