/* 【例3-3】输入一个非负整数n，再输入n个学生的成绩，计算平均分，并统计不及格成绩的学生人数。 */ 

/* 输入一批学生的成绩，计算平均分，并统计不及格成绩的学生人数 */
# include <stdio.h>
int main(void)
{
	int count, i, n;   		/* count 记录不及格成绩的个数 */
	double score, total;  	/* score存放输入的成绩, total保存成绩之和 */

	printf("Enter n: ");   	/* 提示输入学生人数n */
	scanf("%d", &n);
	total = 0;
	count = 0;
	for(i = 1; i <= n; i++){
    	printf("Enter score #%d: ", i);	/* 提示输入第i个成绩 */
    	scanf ("%lf", &score);  			/* 输入第i个成绩，%lf 中的l是字母 */
    	total = total + score;   			/* 累加成绩 */
    	if(score< 60){					/* 统计不及格成绩的学生人数 */
    	    count++;
    	}
	}
    if(n != 0){
    	printf("Average = %.2f\n", total / n);  /* 分母不能为0 */
    }else{
    	printf("Average = %.2f\n", 0.0);   	/* 当n为0时，平均分为0 */
    }
    printf("Number of failures = %d\n", count);

    return 0;
}

