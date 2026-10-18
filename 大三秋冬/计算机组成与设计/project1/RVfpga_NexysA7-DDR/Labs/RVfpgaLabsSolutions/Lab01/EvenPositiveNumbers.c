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
   int B[N];
   int j=0, i;

   /* Initialize Uart */
   uartInit();

   for (i=0; i<N; i++) {
      if (A[i] > 0 && (A[i]%2 == 0)){
         B[j]=A[i];
         printfNexys("B(%d) = %d\n",j,B[j]);
         j++;
      }
   }

   printfNexys("Number of elements in B = %d",j);

   while(1);
}