#include <bsp_printf.h>
#include <bsp_mem_map.h>
#include <bsp_version.h>
#include <psp_api.h>
#include "ee_printf.h"
#include <uart.h>

extern void Test_Assembly(void);

int main(void)
{

   int cyc_beg, cyc_end;
   int instr_beg, instr_end;
   int loads_beg, loads_end;
   int stores_beg, stores_end;

   /* Initialize Uart */
   config_uart();

   pspMachinePerfMonitorEnableAll();

   pspMachinePerfCounterSet(D_PSP_COUNTER0, D_CYCLES_CLOCKS_ACTIVE);
   pspMachinePerfCounterSet(D_PSP_COUNTER1, D_INSTR_COMMITTED_ALL);
   pspMachinePerfCounterSet(D_PSP_COUNTER2, D_LOADS_COMMITED);
   pspMachinePerfCounterSet(D_PSP_COUNTER3, D_STORES_COMMITTED);

   cyc_beg = pspMachinePerfCounterGet(D_PSP_COUNTER0);
   instr_beg = pspMachinePerfCounterGet(D_PSP_COUNTER1);
   loads_beg = pspMachinePerfCounterGet(D_PSP_COUNTER2);
   stores_beg = pspMachinePerfCounterGet(D_PSP_COUNTER3);


   Test_Assembly();


   cyc_end = pspMachinePerfCounterGet(D_PSP_COUNTER0);
   instr_end = pspMachinePerfCounterGet(D_PSP_COUNTER1);
   loads_end = pspMachinePerfCounterGet(D_PSP_COUNTER2);
   stores_end = pspMachinePerfCounterGet(D_PSP_COUNTER3);

   ee_printf("Cycles = %d\n", cyc_end-cyc_beg);
   ee_printf("Instructions = %d\n", instr_end-instr_beg);
   ee_printf("Loads = %d\n", loads_end-loads_beg);
   ee_printf("Stores = %d", stores_end-stores_beg);


   while(1);
}