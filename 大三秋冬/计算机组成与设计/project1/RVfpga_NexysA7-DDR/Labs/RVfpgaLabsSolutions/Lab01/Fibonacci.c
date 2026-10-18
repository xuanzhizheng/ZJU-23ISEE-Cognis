#if defined(D_NEXYS_A7)
   #include <bsp_printf.h>
   #include <bsp_mem_map.h>
   #include <bsp_version.h>
#else
   PRE_COMPILED_MSG("no platform was defined")
#endif
#include <psp_api.h>

#define N 12

int main(void)
{
   int V[N], i;

   /* Initialize Uart */
   uartInit();

   V[0] = 0;
   printfNexys("V(0)=0");
   V[1] = 1;
   printfNexys("V(1)=1");

   for (i=0; i< N-2; i++){
      V[i+2] = V[i+1] + V[i];
      printfNexys("V(%d)=%d",i+2,V[i+2]);
   }
   
   while(1);
}