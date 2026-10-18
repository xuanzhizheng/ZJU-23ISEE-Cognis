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
   int A[N]={0,1,2,7,-8,4,5,12,11,-2,6,3};
   int B[N]={0,1,2,7,-8,4,5,12,11,-2,6,3};
   int C[N];
   int aux, i;

   /* Initialize Uart */
   uartInit();

   for (i=0; i<N; i++) {
      aux = A[i]+B[N-1-i];
      if (aux < 0)
         aux = -aux;
      C[i] = aux;
      printfNexys("C(%d) = %d",i,C[i]);
   }

   while(1);
}