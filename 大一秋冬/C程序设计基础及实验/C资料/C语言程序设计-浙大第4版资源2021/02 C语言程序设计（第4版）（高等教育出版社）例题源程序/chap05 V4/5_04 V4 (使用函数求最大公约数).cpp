/* 使用函数求最大公约数。定义函数gcd(int m，int n)，计算m和n的最大公约数。 */

/* 使用函数求最大公约数 */
#include <stdio.h>

int gcd( int x, int y );

int main()
{
    int x, y;

    scanf("%d %d", &x, &y);
    printf("%d\n", gcd(x, y));

    return 0;
}

/* 采用辗转相除法求最大公约数的函数 */
int gcd(int m,int n) 			/* 定义求最大公约数函数gcd() */
{
		int r, temp;		
		
		if(m < n){ 			/* 如果m小于n，则交换m和n的值 */
			temp = m; 
			m = n; 
			n = temp;
		}
		r = m % n;
		while(r != 0){
			m = n;
			n = r;
			r = m % n;
		}
		return n;
}



