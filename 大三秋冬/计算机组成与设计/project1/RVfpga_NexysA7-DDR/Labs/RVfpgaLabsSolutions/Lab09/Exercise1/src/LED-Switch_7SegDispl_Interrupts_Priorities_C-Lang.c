#include "psp_api.h"
#include "bsp_external_interrupts.h"
#include "psp_ext_interrupts_eh1.h"
#include "bsp_timer.h"
#include "bsp_printf.h"

#define SegEn_ADDR      0x80001038
#define SegDig_ADDR     0x8000103C

#define GPIO_SWs        0x80001400
#define GPIO_LEDs       0x80001404
#define GPIO_INOUT      0x80001408
#define RGPIO_INTE      0x8000140C
#define RGPIO_PTRIG     0x80001410
#define RGPIO_CTRL      0x80001418
#define RGPIO_INTS      0x8000141C

#define RPTC_CNTR       0x80001200
#define RPTC_HRC        0x80001204
#define RPTC_LRC        0x80001208
#define RPTC_CTRL       0x8000120c

#define Select_INT      0x80001018

int SegDisplCount=0;


void GPIO_ISR(void)
{
  unsigned int i;

  /* Write the LED */
  i = M_PSP_READ_REGISTER_32(GPIO_LEDs);             /* RGPIO_OUT */
  i = !i;                                            /* Invert the LEDs */
  i = i & 0x1;                                       /* Keep only the right-most LED */
  M_PSP_WRITE_REGISTER_32(GPIO_LEDs, i);             /* RGPIO_OUT */

  /* Clear GPIO interrupt */
  M_PSP_WRITE_REGISTER_32(RGPIO_INTS, 0x0);           /* RGPIO_INTS */

  /* Stop the generation of the specific external interrupt */
  bspClearExtInterrupt(4);
}


void PTC_ISR(void)
{
  /* Write 7-Seg Displ */
  M_PSP_WRITE_REGISTER_32(SegDig_ADDR, SegDisplCount);
  SegDisplCount++;

  /* Clear PTC interrupt */
  M_PSP_WRITE_REGISTER_32(RPTC_CNTR, 0x0);
  M_PSP_WRITE_REGISTER_32(RPTC_CTRL, 0x40);
  M_PSP_WRITE_REGISTER_32(RPTC_CTRL, 0x31);

  /* Stop the generation of the specific external interrupt */
  bspClearExtInterrupt(3);
}


void DefaultInitialization(void)
{
  u32_t uiSourceId;

  /* Register interrupt vector */
  pspMachineInterruptsSetVecTableAddress(&M_PSP_VECT_TABLE);

  /* Put the Generation-Register in its initial state (no external interrupts are generated) */
  bspInitializeGenerationRegister(D_PSP_EXT_INT_ACTIVE_HIGH);

  for (uiSourceId = D_BSP_FIRST_IRQ_NUM; uiSourceId <= D_BSP_LAST_IRQ_NUM; uiSourceId++)
  {
    /* Make sure the external-interrupt triggers are cleared */
    bspClearExtInterrupt(uiSourceId);
  }

  /* Set Standard priority order */
  pspMachineExtInterruptSetPriorityOrder(D_PSP_EXT_INT_STANDARD_PRIORITY);

  /* Set interrupts threshold to minimal (== all interrupts should be served) */
  pspMachineExtInterruptsSetThreshold(M_PSP_MACHINE_EXT_INT_GET_THRESHOLD_TO_UNMASK_ALL);

  /* Set the nesting priority threshold to minimal (== all interrupts should be served) */
  pspMachineExtInterruptsSetNestingPriorityThreshold(M_PSP_MACHINE_EXT_INT_GET_THRESHOLD_TO_UNMASK_ALL);
}


void ExternalIntLine_Initialization(u32_t uiSourceId, u32_t priority, fptrPspInterruptHandler_t pTestIsr)
{
  /* Set Gateway Interrupt type (Level) */
  pspMachineExtInterruptSetType(uiSourceId, D_PSP_EXT_INT_LEVEL_TRIG_TYPE);

  /* Set gateway Polarity (Active high) */
  pspMachineExtInterruptSetPolarity(uiSourceId, D_PSP_EXT_INT_ACTIVE_HIGH);

  /* Clear the gateway */
  pspMachineExtInterruptClearPendingInt(uiSourceId);

  /* Set IRQ4 priority */
  pspMachineExtInterruptSetPriority(uiSourceId, priority);
    
  /* Enable IRQ4 interrupts in the PIC */
  pspMachineExtInterruptEnableNumber(uiSourceId);

  /* Register ISRs to all interrupt sources (here we use same ISR to all of them) */
  pspMachineExtInterruptRegisterISR(uiSourceId, pTestIsr, 0);

}


void GPIO_Initialization(void)
{
  /* Configure LEDs and Switches */
  M_PSP_WRITE_REGISTER_32(GPIO_INOUT, 0xFFFF);        /* GPIO_INOUT */
  M_PSP_WRITE_REGISTER_32(GPIO_LEDs, 0x0);            /* GPIO_LEDs */

  /* Configure GPIO interrupts */
  M_PSP_WRITE_REGISTER_32(RGPIO_INTE, 0x10000);       /* RGPIO_INTE */
  M_PSP_WRITE_REGISTER_32(RGPIO_PTRIG, 0x10000);      /* RGPIO_PTRIG */
  M_PSP_WRITE_REGISTER_32(RGPIO_INTS, 0x0);           /* RGPIO_INTS */
  M_PSP_WRITE_REGISTER_32(RGPIO_CTRL, 0x1);           /* RGPIO_CTRL */
}


void PTC_Initialization(void)
{
  /* Configure PTC with interrupts */
  M_PSP_WRITE_REGISTER_32(RPTC_LRC, 0xFFFFFF);
  M_PSP_WRITE_REGISTER_32(RPTC_CNTR, 0x0);
  M_PSP_WRITE_REGISTER_32(RPTC_CTRL, 0x40);
  M_PSP_WRITE_REGISTER_32(RPTC_CTRL, 0x31);
}


int main(void)
{
  /* INITIALIZE THE INTERRUPT SYSTEM */
  DefaultInitialization();                            /* Default initialization */
  pspMachineExtInterruptsSetThreshold(5);             /* Set interrupts threshold to 5 */

  /* INITIALIZE INTERRUPT LINES IRQ3 AND IRQ4 */
  ExternalIntLine_Initialization(4, 6, GPIO_ISR);     /* Initialize line IRQ4 with a priority of 6. Set GPIO_ISR as the Interrupt Service Routine */
  ExternalIntLine_Initialization(3, 6, PTC_ISR);      /* Initialize line IRQ3 with a priority of 6. Set PTC_ISR as the Interrupt Service Routine */
  M_PSP_WRITE_REGISTER_32(Select_INT, 0x3);           /* Connect the GPIO interrupt to the IRQ4 interrupt line and the PTC interrupt to the IRQ3 line*/

  /* INITIALIZE THE PERIPHERALS */
  GPIO_Initialization();                              /* Initialize the GPIO */
  PTC_Initialization();                               /* Initialize the Timer */
  M_PSP_WRITE_REGISTER_32(SegEn_ADDR, 0x0);           /* Initialize the 7-Seg Displays */

  /* ENABLE INTERRUPTS */
  pspMachineInterruptsEnable();                       /* Enable all interrupts in mstatus CSR */
  M_PSP_SET_CSR(D_PSP_MIE_NUM, D_PSP_MIE_MEIE_MASK);  /* Enable external interrupts in mie CSR */

  while (1) {
  }

}