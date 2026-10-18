.globl Test_Assembly

.text

Test_Assembly:

li t2, 0x008                  # Disable Branch Predictor
#li t2, 0x000                  # Enable Branch Predictor
csrrs t1, 0x7F9, t2

li t1, 0x1                
li t3, 0x3                
li t4, 0x4                
li t5, 0x5                
li t6, 0x6                
li t0, 0x0
lui t2, 0xF4
add t2, t2, 0x240
nop

REPEAT:
  add t0, t0, 1
  add t3, t3, t1        
  sub t4, t4, t1
  or  t5, t5, t1        
  xor t6, t6, t1
  bne t0, t2, REPEAT # Repeat the loop

.end