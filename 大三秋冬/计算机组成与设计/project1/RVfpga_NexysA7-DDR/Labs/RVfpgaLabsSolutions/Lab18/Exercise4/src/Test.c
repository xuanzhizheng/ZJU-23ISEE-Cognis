#include <bsp_printf.h>
#include <bsp_mem_map.h>
#include <bsp_version.h>
#include <psp_api.h>
#include "ee_printf.h"
#include <uart.h>


#define DIM 3 

float x[DIM] = {2.0, 4.3, 5.9}; // x is an array of size 3(DIM) 
float y[DIM] = {4.0, 2.2, 3.7}; // same as x

float sum_swemul=0, sum_hwimpl=0;


void dotproduct_swemul(){
   int i;

   for (i=0; i<DIM; i++) { 
        sum_swemul += x[i]*y[i]; 
   } 

}


extern void dotproduct_hwimpl();


int main(void)
{
   int cyc_beg_swemul, cyc_end_swemul;
   int cyc_beg_hwimpl, cyc_end_hwimpl;

   /* Initialize Uart */
   config_uart();

   pspMachinePerfMonitorEnableAll();

   pspMachinePerfCounterSet(D_PSP_COUNTER0, D_CYCLES_CLOCKS_ACTIVE);

   cyc_beg_swemul = pspMachinePerfCounterGet(D_PSP_COUNTER0);
   dotproduct_swemul();
   cyc_end_swemul = pspMachinePerfCounterGet(D_PSP_COUNTER0);

   cyc_beg_hwimpl = pspMachinePerfCounterGet(D_PSP_COUNTER0);
   dotproduct_hwimpl(DIM, x, y, &sum_hwimpl);
   cyc_end_hwimpl = pspMachinePerfCounterGet(D_PSP_COUNTER0);

   ee_printf("Cycles SwEmul= %d\n", cyc_end_swemul-cyc_beg_swemul);
   ee_printf("Cycles HwImpl= %d\n", cyc_end_hwimpl-cyc_beg_hwimpl);

   while(1);
}