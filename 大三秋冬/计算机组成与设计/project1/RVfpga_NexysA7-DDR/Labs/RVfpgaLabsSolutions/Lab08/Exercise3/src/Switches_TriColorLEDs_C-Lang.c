#define GPIO_SWs    0x80001400
#define GPIO_LEDs   0x80001404
#define GPIO_INOUT  0x80001408

#define RPTC_CNTR   0x80001200
#define RPTC_HRC    0x80001204
#define RPTC_LRC    0x80001208
#define RPTC_CTRL   0x8000120c

#define RPTC2_CNTR   0x80001240
#define RPTC2_HRC    0x80001244
#define RPTC2_LRC    0x80001248
#define RPTC2_CTRL   0x8000124c

#define RPTC3_CNTR   0x80001280
#define RPTC3_HRC    0x80001284
#define RPTC3_LRC    0x80001288
#define RPTC3_CTRL   0x8000128c

#define RPTC4_CNTR   0x800012c0
#define RPTC4_HRC    0x800012c4
#define RPTC4_LRC    0x800012c8
#define RPTC4_CTRL   0x800012cc

#define READ_Reg(dir) (*(volatile unsigned *)dir)
#define WRITE_Reg(dir, value) { (*(volatile unsigned *)dir) = (value); }

int main ( void )
{
    int switches_value, switches_value_temp, counter_value, delay=1000, i;

    WRITE_Reg(GPIO_INOUT, 0xFFFF);

    while (1) {

        switches_value = READ_Reg(GPIO_SWs);
        switches_value = switches_value >> 16;
        WRITE_Reg(GPIO_LEDs, switches_value);

        WRITE_Reg(RPTC2_HRC, 0xF);
        switches_value_temp = switches_value & 0x1F;
        switches_value_temp = switches_value_temp + 0x10;
        WRITE_Reg(RPTC2_LRC, switches_value_temp);
        WRITE_Reg(RPTC2_CTRL, 0x80);
        WRITE_Reg(RPTC2_CTRL, 0x9);

        WRITE_Reg(RPTC3_HRC, 0xF);
        switches_value_temp = switches_value >> 5;
        switches_value_temp = switches_value_temp & 0x1F;
        switches_value_temp = switches_value_temp + 0x10;
        WRITE_Reg(RPTC3_LRC, switches_value_temp);
        WRITE_Reg(RPTC3_CTRL, 0x80);
        WRITE_Reg(RPTC3_CTRL, 0x9);

        WRITE_Reg(RPTC4_HRC, 0xF);
        switches_value_temp = switches_value >> 10;
        switches_value_temp = switches_value_temp & 0x1F;
        switches_value_temp = switches_value_temp + 0x10;
        WRITE_Reg(RPTC4_LRC, switches_value_temp);
        WRITE_Reg(RPTC4_CTRL, 0x80);
        WRITE_Reg(RPTC4_CTRL, 0x9);

        for (i=0; i<delay; i++);

    }

    return(0);
}
