#include "psp_api.h"

#define GPIO_SWs    0x80001400
#define GPIO_LEDs   0x80001404
#define GPIO_INOUT  0x80001408

int main ( void )
{
    int LED_state, Sw_current_state, Sw_previous_state;

    /* Configure LEDs and Switches */
    M_PSP_WRITE_REGISTER_32(GPIO_INOUT, 0xFFFF);

    /* Init states */
    LED_state = 0;
    M_PSP_WRITE_REGISTER_32(GPIO_LEDs, LED_state);
    Sw_previous_state = (M_PSP_READ_REGISTER_32(GPIO_SWs) >> 16) & 0x1;

    while (1) {
        /* Invert LED-0 when SW-0 goes high */
        Sw_current_state = (M_PSP_READ_REGISTER_32(GPIO_SWs) >> 16) & 0x1;
        if(Sw_current_state==1 && Sw_previous_state==0){
            LED_state = !LED_state;
            M_PSP_WRITE_REGISTER_32(GPIO_LEDs, LED_state);
        }
        Sw_previous_state = Sw_current_state;
    }

    return(0);
}
