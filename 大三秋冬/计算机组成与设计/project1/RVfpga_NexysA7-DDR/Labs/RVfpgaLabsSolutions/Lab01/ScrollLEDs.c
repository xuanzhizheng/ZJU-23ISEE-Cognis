// ScrollLEDs.c
// Description: scrolls increasing numbers of LEDs to the left and right,
//              starting with a single LED

// memory-mapped I/O addresses
#define GPIO_SWs    0x80001400
#define GPIO_LEDs   0x80001404
#define GPIO_INOUT  0x80001408

#define DELAY 0x300000               /* Define the DELAY */

#define READ_GPIO(dir) (*(volatile unsigned *)dir)
#define WRITE_GPIO(dir, value) { (*(volatile unsigned *)dir) = (value); }

int main ( void )
{
  unsigned En_Value=0xFFFF;
  unsigned val, i, cnt;

  WRITE_GPIO(GPIO_INOUT, En_Value);

  val = 1;
  while (1) {
      // scroll bit(s) left	  
	  do {
      WRITE_GPIO(GPIO_LEDs, val);  // display val on LEDs
      // delay
	    cnt = DELAY;
	    i = 0;
	    while (i < cnt)
        i++;
	    val = val << 1;	  
	  } while (val < 65536); 

      // scroll bit(s) right	  
 	  do {
      WRITE_GPIO(GPIO_LEDs, val);  // display val on LEDs
  	  // delay
	    cnt = DELAY;
	    i = 0;
	    while (i < cnt)
        i++;
	    val = val >> 1;	  
	} while ( (val & 1) == 0 );      // shift right until val reaches right edge 

    // Add another bit or reset to val = 1 if all LEDs lit. 
    if (val == 65535)    // 2^16 - 1 = 65535 (value when all bits lit)
	    val = 1;
    else
      val = (val << 1) | 1;                 // add another bit to scroll
  }

  return(0);
}
