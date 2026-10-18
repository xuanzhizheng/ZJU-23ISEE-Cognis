#include <stdio.h>
#include <string.h>
#ifdef NO_SEMIHOSTING
#include "ee_printf.h"
#ifdef CUSTOM_UART
#include <uart.h>
#endif // CUSTOM_UART
#endif

int main(void)
{
   int i;

   /* Initialize Uart */
   config_uart();

   while(1){
      /* Print "hello world" message on the serial output (be careful not all the printf formats are supported) */
      ee_printf("hello world\n");
      /* Delay */
      for (i=0;i<10000;i++){};
   }

}
