clear;
clc;

n = 0:5;
x1 = (n == 0);
x2 = (n == 1);
x3 = (n == 0) + 2*(n == 1);

a=1;
b=[1 -1 -1];

w1=filter(b,a,x1);
w2=filter(b,a,x2);
w3=filter(b,a,x3);
w4=w1+2*w2;

subplot(4,1,1);
stem(n,w1);
title("w1");

subplot(4,1,2);
stem(n,w2);
title("w2");

subplot(4,1,3);
stem(n,w3);
title("w3");

subplot(4,1,4);
stem(n,w4);
title("w1+2*w2");

sgtitle("\omega [n]=x[n]-x[n-1]-x[n-2]");
