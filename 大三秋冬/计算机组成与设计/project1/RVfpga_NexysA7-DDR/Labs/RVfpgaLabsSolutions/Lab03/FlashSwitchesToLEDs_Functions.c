// FlashSwitchesToLEDs_Functions.c
// Description: flash the value of the switches on the LEDs approximately every 2 seconds. 

// memory-mapped I/O addresses
#define GPIO_SWs    0x80001400
#define GPIO_LEDs   0x80001404
#define GPIO_INOUT  0x80001408

#define DELAY 0x3B9            /* Define the DELAY - empirical number approximately equal to 1 ms */

#define READ_GPIO(dir) (*(volatile unsigned *)dir)
#define WRITE_GPIO(dir, value) { (*(volatile unsigned *)dir) = (value); }

void initGPIO();
void delay(int num);
unsigned int readSwitches();

int main ( void )
{
  unsigned int val;

  initGPIO();

  while (1) { 
    val = readSwitches();
    WRITE_GPIO(GPIO_LEDs, val);  // display switch values on LEDs
    delay(1000);  
    WRITE_GPIO(GPIO_LEDs, 0);    // turn off LEDs 
    delay(1000);
  }

  return(0);
}

void initGPIO() {
  int En_Value=0xFFFF;
  WRITE_GPIO(GPIO_INOUT, En_Value);
}

// delays for num milliseconds
void delay(int num) {
  volatile int i, j, cnt = DELAY;

  for (i = 0; i < num; i++)
    for (j = 0; j < cnt; j++)
      ;
}

unsigned int readSwitches() {
  unsigned int switches_value = READ_GPIO(GPIO_SWs);   // read value on switches
  switches_value = switches_value >> 16;               // shift into lower 16 bits

  return switches_value;
}