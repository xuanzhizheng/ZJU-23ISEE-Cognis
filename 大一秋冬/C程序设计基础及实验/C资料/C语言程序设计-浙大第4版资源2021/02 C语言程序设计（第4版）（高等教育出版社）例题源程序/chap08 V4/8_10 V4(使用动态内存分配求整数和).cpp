/* 【例8-12】先输入一个正整数n，再输入任意n个整数，计算并输出这n个整数的和。要求使用动态内存分配方法为这n个整数分配空间。*/

/*  求任意个整数和*/
# include <stdio.h>
# include <stdlib.h>
int main ( )
{
	int n, sum, i, *p;

	printf("Enter n: ");
	scanf("%d", &n);
	
	/*为数组p动态分配n个整数类型大小的空间 */
	if ((p = (int *)calloc(n, sizeof(int))) == NULL) {
		printf("Not able to allocate memory. \n");
		exit(1);
	}
	
	printf("Enter %d integers: ", n);   /* 提示输入n个整数 */
	for (i = 0; i < n; i++)
		scanf("%d", p+i);
		
	sum = 0;
	for (i = 0; i < n; i++){			/* 计算n个整数和 */
		sum = sum + *(p+i);
	} 
	printf("The sum is %d \n",sum);
	free(p);							/* 释放动态分配的空间 */

	return 0;
}

