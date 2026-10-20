/*【例2-10】输入一个正整数n，生成一张2的乘方表。*/

/* 调用幂函数pow()生成乘方表 */
#include <stdio.h>
#include <math.h>   /* 程序中调用了数学库函数，需包含头文件math.h */
int main(void)
{    
    int i, n;
    double power;

    printf("Enter n:");  	        /* 输入提示 */
    scanf("%d", &n); 
    for (i = 0; i <= n ; i++){
        power = pow(2, i);          /* 调用幂函数pow(2,i)计算2的i次方 */
        printf("pow(2,%d)= %.0f\n", i, power);
    }

   return 0;
}
