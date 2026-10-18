clear;
clc;

n=0:5;
x1=[1 0 0 0 0 0];
x2=[0 1 0 0 0 0];
x3=x1+2*x2;

w1=cos(x1);
w2=cos(x2);
w3=cos(x3);
w4=w1+2*w2;


subplot(4,1,1);
stem(n,w1);
title('y1');

subplot(4,1,2);
stem(n,w2);
title('y2');

subplot(4,1,3);
stem(n,w3);
title('y3');

subplot(4,1,4);
stem(n,w4);
title('y1+2*y2');

sgtitle("y[n]=cos(x[n])");