// 4bitAdd.S
// Description: Adds two 4-bit values encoded in the 4 most significant and 4 least 
// significant switches. The sum is displayed on the least significant 4 LEDs (LED[3:0]). The 
// carryout is displayed in the next most significant LED (LED[4]).

// memory-mapped I/O addresses
# GPIO_SWs   = 0x80001400
# GPIO_LEDs  = 0x80001404
# GPIO_INOUT = 0x80001408

#define MSNIBBLE 0xF000        // most significant nibble of 16-bit number
#define LSNIBBLE 0xF           // least significant nibble of 16-bit number

.globl main
main:

  li   t0, 0x80001400       # base address of GPIO memory-mapped registers
  li   t1, 0xFFFF           # set direction of GPIOs
                            # upper half = switches (inputs)  (=0)
                            # lower half = outputs (LEDs)     (=1)
  sw   t1, 8(t0)            # GPIO_INOUT = 0xFFFF

  li   t4, MSNIBBLE         # t4 = 0xF000 (mask for most significant nibble)
  li   t5, LSNIBBLE         # t5 = 0xF    (mask for least significant nibble)

Loop:
  lw   t1, 0(t0)            # read switches: t1 = GPIO_SWs
  srli t1, t1, 16           # shift val to the right by 16 bits

  and  t2, t1, t4           # t2 = top 4 bits of switches
  srli t2, t2, 12           # shift into lower 4 bits
  and  t3, t1, t5           # t3 = bottom 4 bits of switches
  add  t3, t2, t3           # t3 = sum of top 4 bits and bottom 4 bits 
  sw   t3, 4(t0)            # display sum on LEDs
  j    Loop