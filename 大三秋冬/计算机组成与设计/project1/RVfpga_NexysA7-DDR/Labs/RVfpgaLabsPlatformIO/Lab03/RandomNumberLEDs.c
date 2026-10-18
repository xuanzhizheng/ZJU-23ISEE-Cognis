#include <stdlib.h>

// memory-mapped I/O addresses
#define GPIO_SWs    0x80001400
#define GPIO_LEDs   0x80001404
#define GPIO_INOUT  0x80001408
#define DELAY       0x1000000  // Define the DELAY

#define READ_GPIO(dir) (*(volatile unsigned *)dir)
#define WRITE_GPIO(dir, value) { (*(volatile unsigned *)dir) = (value); }

void IOsetup();
unsigned int getSwitchVal();
void writeValtoLEDs(unsigned int val);

int main(void)
{
  unsigned int val;
  volatile unsigned int i;

  IOsetup();
  while (1) { 
    val = rand() % 65536;
    writeValtoLEDs(val);
    for (i = 0; i < DELAY; i++)
      ;
  }
  return(0);
}

void IOsetup() {
  int En_Value=0xFFFF;
  WRITE_GPIO(GPIO_INOUT, En_Value);
}

unsigned int getSwitchVal() { 
  unsigned int val;

  val = READ_GPIO(GPIO_SWs);   // read value on switches        
  val = val >> 16;  // shift into lower 16 bits

  return val;
}

void writeValtoLEDs(unsigned int val) {
  WRITE_GPIO(GPIO_LEDs, val);  // display val on LEDs
}


