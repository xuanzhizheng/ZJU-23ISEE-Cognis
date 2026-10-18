// DisplayInverse_Functions.c
// Description: display the inverted value of the switches on the LEDs
// Students need not have factored out the code in the initGPIO function.

// memory-mapped I/O addresses
#define GPIO_SWs    0x80001400
#define GPIO_LEDs   0x80001404
#define GPIO_INOUT  0x80001408

#define READ_GPIO(dir) (*(volatile unsigned *)dir)
#define WRITE_GPIO(dir, value) { (*(volatile unsigned *)dir) = (value); }

void initGPIO();
unsigned int getSwitchesInvert();

int main ( void )
{
  initGPIO();
  while (1) { 
    WRITE_GPIO(GPIO_LEDs, getSwitchesInvert());  // display inverse of switch value on LEDs
  }

  return(0);
}

void initGPIO() {
  int En_Value=0xFFFF;
  WRITE_GPIO(GPIO_INOUT, En_Value);
}

unsigned int getSwitchesInvert() {
    unsigned int val;

    val = READ_GPIO(GPIO_SWs);   // read value on switches
    val = val >> 16;             // shift into lower 16 bits
    val = val ^ 0xFFFF;          // invert value
    return val;
}
