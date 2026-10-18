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
   int V[N]={0,1,2,7,-8,4,5,12,11,-2,6,3};
   int aux, i, swapped;

   /* Initialize Uart */
   uartInit();

   do {
      swapped=0;
      for (i=0;i<N-1;i++){
         if (V[i] > V[i+1]){
            aux = V[i];
            V[i] = V[i+1];
            V[i+1] = aux;
            swapped = 1;
         }
      }
   } while(swapped);

   for (i=0;i<N;i++){
      printfNexys("V(%d) = %d\n",i,V[i]);
   }

   while(1);
}