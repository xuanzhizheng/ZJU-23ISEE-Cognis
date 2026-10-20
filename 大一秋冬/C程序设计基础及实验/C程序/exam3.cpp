#include<stdio.h>
int main() {
	//int k=11,a;
	//a=0xb;
	//printf("%d %o %x\n",k,k,k);
	//printf("%d",a);
	//printf("%d",'\\');
	//float i=1;
	//printf("%lf",i);
	//for(i=-5;i<5;i++)
	//	printf("%d,%d\n",i,!i);
	char a=064;
	printf("%o\n",a);
	printf("%o\n",a<<2);
	printf("%o\n",~a^a<<2);
	return 0;
}
