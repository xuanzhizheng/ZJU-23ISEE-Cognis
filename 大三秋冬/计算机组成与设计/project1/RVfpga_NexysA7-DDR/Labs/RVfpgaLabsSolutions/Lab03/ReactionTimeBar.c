// ReactionTimeBar.c
// Description: Measure the number of milliseconds it takes for a user to switch the 
// right-most switch on after the LEDs all light up at a random time. The user initiates 
// the game by toggling the right-most switch on and then off.
//
// This program seeds the random number generator with the number of ticks (approximately clock cycles) until the user begins the game.
// The reaction time is displayed as an increasing number of LEDs, starting at the right-most LED (LED[0]).

#if defined(D_NEXYS_A7)
   #include <bsp_printf.h>
   #include <bsp_mem_map.h>
   #include <bsp_version.h>
#else
   PRE_COMPILED_MSG("no platform was defined")
#endif
#include <psp_api.h>
#include <stdlib.h>

// memory-mapped I/O addresses
#define GPIO_SWs    0x80001400
#define GPIO_LEDs   0x80001404
#define GPIO_INOUT  0x80001408

#define DELAY 0x4D6            /* Define the DELAY - empirical number approximately equal to 1 ms */
#define MAXWAIT 3000           /* Maximum number of milliseconds to wait before lighting LEDs is 10 seconds (10,000 ms) */

#define SLOWTIME 375           /* anything 400 ms or higher is seen as a slow reaction time (i.e., all LEDS lit) */

#define READ_GPIO(dir) (*(volatile unsigned *)dir)
#define WRITE_GPIO(dir, value) { (*(volatile unsigned *)dir) = (value); }

void initGPIO();
unsigned int readSwitches();
void delay(int num);
void initGame();
void startGame();
void lightLEDs();
unsigned int waitForUser();
void displayReactionTime(unsigned int time);

int main ( void )
{
  unsigned int reactionTime;

  initGPIO();
  uartInit();

  WRITE_GPIO(GPIO_LEDs, 0);            // deassert all LEDs
  initGame();                          // seed random number generator and start the game
  while (1) { 
    lightLEDs();
    reactionTime = waitForUser();
    displayReactionTime(reactionTime);
    startGame();
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

// Waits for user to toggle right-most switch (SW[0]) on and then off to initiate game
void initGame() {
  unsigned int numTicks = 0;

  // if not already on, wait for user to toggle switch on first
  while ( !(readSwitches() & 1) ) 
    numTicks++;    

  while (  (readSwitches() & 1) )    // wait for user to toggle switch off
    numTicks++;

  srand(numTicks);
}


// Waits for user to toggle right-most switch (SW[0]) off to restart game
void startGame() {
  while (  (readSwitches() & 1) )  ;  // wait for user to toggle switch off
}

void lightLEDs() {
  int val;

  WRITE_GPIO(GPIO_LEDs, 0);           // deassert all LEDs
  val = rand() % MAXWAIT;

  delay(val);
  WRITE_GPIO(GPIO_LEDs, 0xFFFF);      // assert all LEDs
}

unsigned int waitForUser() {
  unsigned int numTicks = 0;
  unsigned int numTicksPer_ms = DELAY * 2;

  // if the switch is already on, wait for user to toggle switch off, then on
  while ( readSwitches() & 1 ) ;   // wait for user to first turn switch off - no cheating!

  // wait for user to toggle switch on
  while ( !(readSwitches() & 1) ) 
    numTicks++;    

  numTicks = numTicks / numTicksPer_ms;

  return numTicks;
}

// display reaction time as a bar on LEDs and on serial monitor
void displayReactionTime(unsigned int time) {
  unsigned int displayval;

  if      (time > SLOWTIME)         displayval = 0xFFFF;
  else if (time > (SLOWTIME - 10))  displayval = 0x7FFF;
  else if (time > (SLOWTIME - 20))  displayval = 0x3FFF;
  else if (time > (SLOWTIME - 30))  displayval = 0x1FFF;
  else if (time > (SLOWTIME - 40))  displayval = 0x0FFF;
  else if (time > (SLOWTIME - 50))  displayval = 0x07FF;
  else if (time > (SLOWTIME - 60))  displayval = 0x03FF;
  else if (time > (SLOWTIME - 70))  displayval = 0x01FF;
  else if (time > (SLOWTIME - 80))  displayval = 0x00FF;
  else if (time > (SLOWTIME - 90))  displayval = 0x007F;
  else if (time > (SLOWTIME - 100)) displayval = 0x003F;
  else if (time > (SLOWTIME - 110)) displayval = 0x001F;
  else if (time > (SLOWTIME - 120)) displayval = 0x000F;
  else if (time > (SLOWTIME - 130)) displayval = 0x0007;
  else if (time > (SLOWTIME - 140)) displayval = 0x0003;
  else if (time < (SLOWTIME - 150)) displayval = 0x0001;
  else                              displayval = 0xFFFF;

  WRITE_GPIO(GPIO_LEDs, displayval);
  printfNexys("Reaction Time: %d ms\n", time);
}
