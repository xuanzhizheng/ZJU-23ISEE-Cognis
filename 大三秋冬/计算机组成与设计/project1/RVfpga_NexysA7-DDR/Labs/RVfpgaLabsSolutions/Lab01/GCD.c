#if defined(D_NEXYS_A7)
   #include <bsp_printf.h>
   #include <bsp_mem_map.h>
   #include <bsp_version.h>
#else
   PRE_COMPILED_MSG("no platform was defined")
#endif
#include <psp_api.h>

int main(void)
{
   int a=7, b=15;

   while(a!=b){
      if (a>b)
         a=a-b;
      else
         b=b-a;
   }

   /* Initialize Uart */
   uartInit();

   /* Print result of GCD */
   printfNexys("Greatest Common Divisor = %d\n",a);

   while(1);
}