/*【例5-6】数字金字塔。输入一个正整数n，输出n行数字金字塔。*/ 

/* 输出数字金字塔 */
#include <stdio.h>

void pyramid(int n);		/* 函数声明 */

int main(void)
{   
	int n;

	printf("Enter n: ");
	scanf("%d", &n);
	pyramid(n);				/* 调用函数，输出n行数字金字塔 */

	return 0;
}

void pyramid(int n)               /* 函数定义，输出n行数字金字塔*/
{		
	int i, j;

	for(i = 1; i <= n; i++){			/* 需要输出的行数 */
		for(j = 1; j <= n-i; j++){ 	    /* 输出每行左边的空格 */
			printf(" ");
		}		        
		for(j = 1; j <= i; j++){  		/* 输出每行的数字 */ 
			printf("%d ", i);			/* %d后面有1个空格 */
		}	    
		putchar('\n');			    
	}
	
	return;
}

