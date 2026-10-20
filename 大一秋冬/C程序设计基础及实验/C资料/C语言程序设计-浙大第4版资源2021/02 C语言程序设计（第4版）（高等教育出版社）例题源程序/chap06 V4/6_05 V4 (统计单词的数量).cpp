/*【例6-5】输入一行字符，统计其中单词的个数。所谓"单词"是指连续不含空格的字符串，各单词之间用空格分隔，空格数可以是多个。*/ 

#include <stdio.h>
int main(void)
{
	int cnt, word; 					/* cnt记录单词的个数，word是新单词标识 */
	char ch;

	word = cnt = 0;  				/* word的初值为0，表示还没有遇到新单词*/
   	printf("Input characters: ");  	/* 输入提示 */
	while ((ch = getchar()) != '\n') {
		if (ch == ' ') {				/* 读入空格，表示不是单词 */
			word = 0; 					/* word赋0，表示没有遇到新单词 */
		}else if (word == 0) {			/* 读入非空格且word为0，此为单词首字符*/
			word = 1; 					/* word赋1，表示遇到新单词 */
			cnt++;						/* 累加单词计数器cnt */
		}
	}
	printf("%d\n", cnt);

	return 0;
}

