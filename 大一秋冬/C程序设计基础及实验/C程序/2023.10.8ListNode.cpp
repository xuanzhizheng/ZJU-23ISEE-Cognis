struct ListNode *readlist(){
    int num;
    struct ListNode *head = NULL, *tail = NULL, *p;
    scanf("%d",&num);
    while(num != -1){
        p=(struct ListNode*)malloc(sizeof(struct ListNode));
        p->data = num;
        p->next = NULL;
        if(head == NULL)
            head = p;
        else
            tail->next = p;
        tail = p;
        scanf("%d",&num);
    }
    return head;
}

struct ListNode *getodd(struct ListNode **L){
    struct ListNode *ptr1, *ptr2, *head=NULL,*tail_L=NULL,*tail=NULL;
    ptr1=*L;
    *L=NULL;
    while(ptr1!=NULL){
        if(ptr1->data%2==0){
            if(*L==NULL)
                *L=ptr1;
            else
                tail_L->next=ptr1;
            tail_L=ptr1;
        }
        else{
            if(head==NULL)
                head=ptr1;
            else
                tail->next=ptr1;
            tail=ptr1;
        }
        ptr1=ptr1->next;
    }
    if(tail!=NULL)
        tail->next=NULL;
    if(tail_L!=NULL)
        tail_L->next=NULL;
    return head;
}