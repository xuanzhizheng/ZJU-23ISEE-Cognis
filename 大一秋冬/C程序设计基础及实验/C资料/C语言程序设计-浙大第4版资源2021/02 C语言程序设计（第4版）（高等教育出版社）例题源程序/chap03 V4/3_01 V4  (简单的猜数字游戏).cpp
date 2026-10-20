/*【例3-1】简单的猜数游戏。输入你所猜的整数（假定1~100内），与计算机产生的被猜数比较，若相等，显示猜中；若不等，显示与被猜数的大小关系。*/

/* 简单的猜数游戏 */
# include <stdio.h>
int main(void)
{
    int  mynumber = 38;                /* 计算机指定被猜的数 */
    int  yournumber;

    printf("Input your number: ");     /* 提示输入你所猜的整数 */
    scanf("%d", &yournumber);
    if(yournumber == mynumber){         /* 若相等，显示猜中 */
        printf("Good Guess!\n");
    }else if(yournumber > mynumber ){   /* 若不等，再比较大小 */
        printf("Too big!\n");
    }else{ 
        printf("Too small!\n");
    }

    return 0;
}


