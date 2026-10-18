// 4bitAdd.c
// Description: Add 4 least significant bits of switches to 4 most significant bits of
//              switches and display result on LEDs.

// memory-mapped I/O addresses
#define GPIO_SWs    0x80001400
#define GPIO_LEDs   0x80001404
#define GPIO_INOUT  0x80001408

#define DELAY 0x500000               /* Define the DELAY */

#define READ_GPIO(dir) (*(volatile unsigned *)dir)
#define WRITE_GPIO(dir, value) { (*(volatile unsigned *)dir) = (value); }

int main ( void )
{
  unsigned int En_Value=0xFFFF, switches_value, num1, num2, result;

  WRITE_GPIO(GPIO_INOUT, En_Value);

  while (1) { 
    switches_value = READ_GPIO(GPIO_SWs);   // read value on switches
    switches_value = switches_value >> 16;  // shift into lower 16 bits

    num1 = (switches_value & 0xF000) >> 12; // num1 = 4 msbs
    num2 = (switches_value & 0x000F);       // num2 = 4 lsbs
	
    result = num1 + num2;                   // result = num1 + num2

    WRITE_GPIO(GPIO_LEDs, result);          // display sum of num1 and num2 on LEDs
  }

  return(0);
}
