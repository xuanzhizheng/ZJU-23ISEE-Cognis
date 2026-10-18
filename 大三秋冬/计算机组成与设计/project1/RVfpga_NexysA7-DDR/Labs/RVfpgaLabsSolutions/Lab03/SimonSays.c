// SimonSays.c
// Description: This program displays a random sequence of patterns on the 3 right-most LEDs. 
// The user must mimic this pattern using the 3 right-most switches. If the user does not 
// enter the correct pattern, all of the LEDs stay lit.
//
// The program is initiated or restarted by the user toggling the left-most switch (Switch[15]) on and then off.
//

#include <stdlib.h>

// memory-mapped I/O addresses
#define GPIO_SWs    0x80001400
#define GPIO_LEDs   0x80001404
#define GPIO_INOUT  0x80001408
#define LEFT        4
#define MIDDLE      2
#define RIGHT       1

#define DELAY 0x3B9            /* Define the DELAY - empirical number approximately equal to 1 ms */
#define MAXSIZE 30             /* maximum number of entries in the pattern sequence */

#define READ_GPIO(dir) (*(volatile unsigned *)dir)
#define WRITE_GPIO(dir, value) { (*(volatile unsigned *)dir) = (value); }

void initGPIO();
unsigned int readSwitches();
void delay(int num);
void initGame();
void restartGame();
void playGame();
void setPattern();
void displayPattern();
unsigned int getUserPattern();
unsigned int readNewSwitchVal();

int sequence[MAXSIZE];

int main ( void )
{
  initGPIO();

  WRITE_GPIO(GPIO_LEDs, 0);            // deassert all LEDs
  initGame();
  while (1) { 
    delay(1000);
    playGame();
    restartGame();
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

// Waits for user to toggle left-most switch (SW[15]) on and then off to initiate game
void initGame() {
  unsigned int numTicks = 0;

  // if not already on, wait for user to toggle switch on first
  while ( !(readSwitches() & 0x8000) ) 
    numTicks++;    

  while (  (readSwitches() & 0x8000) )    // wait for user to toggle switch off
    numTicks++;

  srand(numTicks);

}


// Waits for user to toggle left-most switch (SW[15]) on and then off to initiate game
void restartGame() {
  // if not already on, wait for user to toggle switch on first
  while ( !(readSwitches() & 0x8000) ) ;
  while (  (readSwitches() & 0x8000) ) ;  // wait for user to toggle switch off
}

void playGame() {
  unsigned int index = 0;
  unsigned int correct = 1;

  while (correct) {
    setPattern(index);
    displayPattern(index);
    correct = getUserPattern(index);
    index++;
  }
  WRITE_GPIO(GPIO_LEDs, 0xFFFF);   // turn on all LEDs
  return;
}

void setPattern(unsigned int index) {
  unsigned int LED;

  LED = rand() % 3;
  LED = 1 << LED;
  sequence[index] = LED;
  return;  
}

void displayPattern(unsigned int index) {
  unsigned int displayVal;

  WRITE_GPIO(GPIO_LEDs, 0);    
  delay(500);

  for (int i = 0; i <= index; i++) {
    displayVal = sequence[i];
    WRITE_GPIO(GPIO_LEDs, displayVal);    
    delay(350);
    WRITE_GPIO(GPIO_LEDs, 0);    
    delay(350);
  }
    WRITE_GPIO(GPIO_LEDs, 0);    
}

unsigned int getUserPattern(unsigned int index) {
  unsigned int val;

  for (int i = 0; i <= index; i++) {
    val = (readNewSwitchVal());       // read switches
    if (val != sequence[i]) return 0;
  }
  return 1;
}


unsigned int readNewSwitchVal() {
  unsigned int switchval;
  // what for all 0's on switches first, then wait for user to toggle switch on
  // mask off all but the 3 least significant bits (3 right-most switches)
  while (   readSwitches() & 0x7 ) ; 
  while ( !(readSwitches() & 0x7) ) ; 
  switchval = readSwitches() & 0x7;
  WRITE_GPIO(GPIO_LEDs, switchval);   // display user entry on the LEDs  
  while (   readSwitches() & 0x7 ) ;  // wait till all switches off again
  WRITE_GPIO(GPIO_LEDs, 0);           // display nothing on LEDs between user entries 
  return switchval;
}