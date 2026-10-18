#define GPIO_SWs    0x80001400
#define GPIO_LEDs   0x80001404
#define GPIO_INOUT  0x80001408

#define READ_GPIO(dir) (*(volatile unsigned *)dir)
#define WRITE_GPIO(dir, value) { (*(volatile unsigned *)dir) = (value); }

int main ( void )
{
    int i, switches_value, leds_value, switches_value_temp, delay;

    WRITE_GPIO(GPIO_INOUT, 0xFFFF);

    leds_value = 0xF0;
	WRITE_GPIO(GPIO_LEDs, leds_value>>4);

    while (1) { 
        switches_value = READ_GPIO(GPIO_SWs);
        switches_value = switches_value >> 16;

        switches_value_temp = switches_value & 0x1;
        if (switches_value_temp==0x1) delay = 1000000;
        else delay = 10000000;

        switches_value_temp = switches_value & 0x2;
        if (switches_value_temp==0x2){
        	leds_value = leds_value>>1;
        	if (leds_value == 0xF) leds_value = 0xF00000;
        }
        else{
        	leds_value = leds_value<<1;
        	if (leds_value == 0xF00000) leds_value = 0xF;
        }

		WRITE_GPIO(GPIO_LEDs, leds_value>>4);

		for (i=0; i<delay; i++);
    }

    return(0);
}
