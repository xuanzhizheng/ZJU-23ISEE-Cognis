/*【例5-1】输入圆柱的高和半径，求圆柱体积，volume=3.1415926*r*r*h。要求定义和调用函数cylinder (r, h )计算圆柱体的体积。 */

/* 计算圆柱体积 */
#include <stdio.h>
double cylinder(double r, double h);		/* 函数声明*/
int main( void )
{
	double height, radius, volume;					

	printf("Enter radius and height: ");	    /* 输入提示 */
	scanf("%lf%lf", &radius, &height);		    /* 输入圆柱的半径和高度 */
	volume = cylinder(radius, height );			/* 调用函数，返回值赋给volume */
	printf("Volume = %.3f\n", volume);			/*输出圆柱的体积 */
	
	return  0;
}

/* 定义求圆柱体积的函数 */
double cylinder(double r, double h)	
{
	double result;
	
	result = 3.1415926 * r * r * h;    			/* 计算圆柱体积 */
	
	return result;								/* 返回结果 */
}
