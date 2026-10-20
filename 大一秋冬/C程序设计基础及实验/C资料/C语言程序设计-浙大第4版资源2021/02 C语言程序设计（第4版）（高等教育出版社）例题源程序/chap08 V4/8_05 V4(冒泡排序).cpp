/* 【例8-5】冒泡排序。输入n个正整数，将它们从小到大排序后输出，要求使用冒泡排序算法。*/

/*  冒泡排序算法 */
#include <stdio.h>
#define MAXN 10
void swap (int *px, int *py);  
void bubble (int a[ ], int n);

int main(void)
{    
	int n, a[MAXN];
	int i;

	printf("Enter n (n<=10): ");       	/* 提示输入n */
	scanf("%d", &n);
	printf("Enter %d integers: ", n);  	/* 提示输入n 个数 */

	for (i = 0; i < n; i++) {
		scanf("%d", &a[i]);
   }
	bubble(a, n);
	printf("After sorted: ");
	for (i = 0; i < n; i++) {
		printf("%3d", a[i]);
  }

	return 0;
}

void swap (int *px, int *py)
{
	int t;

	t = *px; 
	*px = *py; 
	*py = t;
}

void bubble (int a[ ], int n)  		/*  n是数组a中待排序元素的数量 */
{
   int  i, j, t;

   for( i = 1; i < n; i++ ){		    /*  外部循环  */
      for (j = 0; j < n-i; j++ ){	    /*  内部循环  */
        if (a[j] > a[j+1]){		    	/*  比较相邻两个元素的大小  */
           swap(&a[j], &a[j+1]);	/*  调用函数swap()实现交换a[j]与a[j+1]的值 */
		}
      }
    }
}

