/* 【例4-7-2】计算1! + 2! + 3! + … + n!。要求使用嵌套循环。*/

/* 使用嵌套循环计算 1! + 2! + 3! + … + n! */
# include <stdio.h>
int main(void)
{
    int i, j, n;
    double item, sum;               /* 变量 item 中存放阶乘的值 */

    printf("Enter n: ");            /* 输入提示 */
    scanf("%d", &n);
	sum = 0;
	for(i = 1; i <= n; i++){  		/* 外层循环执行n次，求累加和 */
	    item = 1;    	    		/* 置 item 的初值为1，以保证每次求阶乘都从1开始连乘 */
	    for(j = 1; j <= i; j++){	/* 内层循环重复i次，算出item = i! */
		      item = item * j;
	    }
	    sum = sum + item;  			/* 累加 i! */
	}
    printf("1! + 2! + ... + %d! = %.0f\n", n, sum);   

    return 0;
}

