#define SegEn_ADDR    0x80001038
#define SegDig_ADDR   0x8000103C

#define WRITE_7Seg(dir, value) { (*(volatile unsigned *)dir) = (value); }

#define N 9

int main ( void )
{
    int i;
    int SegDig_Value=0, SegDig_LSD;

    WRITE_7Seg(SegEn_ADDR, 0x0);

    while (1) {

        for(i=0;i<1000000;i++);

    	SegDig_LSD = SegDig_Value & 0xF;
    	SegDig_LSD = (SegDig_LSD + 1) % N;
    	SegDig_Value = SegDig_Value << 4;
    	SegDig_Value = SegDig_Value | SegDig_LSD;

        WRITE_7Seg(SegDig_ADDR, SegDig_Value);

    }

    return(0);
}
