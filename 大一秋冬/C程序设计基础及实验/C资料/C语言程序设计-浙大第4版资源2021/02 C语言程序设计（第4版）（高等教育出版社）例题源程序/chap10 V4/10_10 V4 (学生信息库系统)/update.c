extern Count;		/* 其他文件模块定义的全局变量，需要声明为外部变量 */

/*修改学生成绩的函数*/
void modify(struct student *p)
{
	int num, course, score, i;
	
	printf("Input the number of updated student: ");
	scanf("%d", &num);
	printf("Choice the course: 1.math 2.english 3.computer: ");
	scanf("%d", &course);
	printf("Input the new score: ");
	scanf("%d", &score);
	for(i = 0; i < Count; i++, p++){  	/* 按学号查找 */
		if(p->num == num){
			break;
		}
	}
	if(i < Count){ /* 找到，修改成绩 */
		switch(course){
			case 1: p->math = score; break;
			case 2: p->english = score; break;
			case 3: p->computer = score; break;
	    }
  	}
}
 
/* 平均成绩排序的函数 */
void sort(struct student s[])
{
	struct student temp;
	int i, index, j;
	
	for( i = 0; i < Count-1; ++i ){
		index = i;
		for (j = i+1; j < Count; j++ ){ 
			if (s[j].average > s[index].average){   /* 比较平均分*/
				index = j;
			}
		} 
		temp = s[index];		/* 交换数组元素 */
		s[index] = s[i];
		s[i] = temp;
	}
}
