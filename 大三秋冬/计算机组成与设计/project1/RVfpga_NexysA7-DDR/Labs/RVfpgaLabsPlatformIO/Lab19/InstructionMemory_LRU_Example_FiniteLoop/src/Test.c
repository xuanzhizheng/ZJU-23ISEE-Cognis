#if defined(D_NEXYS_A7)
   #include <bsp_printf.h>
   #include <bsp_mem_map.h>
   #include <bsp_version.h>
#else
   PRE_COMPILED_MSG("no platform was defined")
#endif
#include <psp_api.h>

extern void Test_Assembly(void);

int main(void)
{
   int cyc_beg, cyc_end;
   int instr_beg, instr_end;
   int hits_beg, hits_end;
   int miss_beg, miss_end;

   /* Initialize Uart */

   uartInit();

   pspMachinePerfCounterSet(D_PSP_COUNTER0, D_CYCLES_CLOCKS_ACTIVE);
   pspMachinePerfCounterSet(D_PSP_COUNTER1, D_INSTR_COMMITTED_ALL);
   pspMachinePerfCounterSet(D_PSP_COUNTER2, D_I_CACHE_HITS);
   pspMachinePerfCounterSet(D_PSP_COUNTER3, D_I_CACHE_MISSES);

   cyc_beg = pspMachinePerfCounterGet(D_PSP_COUNTER0);
   instr_beg = pspMachinePerfCounterGet(D_PSP_COUNTER1);
   hits_beg = pspMachinePerfCounterGet(D_PSP_COUNTER2);
   miss_beg = pspMachinePerfCounterGet(D_PSP_COUNTER3);

   Test_Assembly();

   cyc_end = pspMachinePerfCounterGet(D_PSP_COUNTER0);
   instr_end = pspMachinePerfCounterGet(D_PSP_COUNTER1);
   hits_end = pspMachinePerfCounterGet(D_PSP_COUNTER2);
   miss_end = pspMachinePerfCounterGet(D_PSP_COUNTER3);

   printfNexys("Cycles = %d", cyc_end-cyc_beg);
   printfNexys("Instructions = %d", instr_end-instr_beg);
   printfNexys("I$ Hits = %d", hits_end-hits_beg);
   printfNexys("I$ Misses = %d", miss_end-miss_beg);

   while(1);
}