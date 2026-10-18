clear;
clc;

n=0:5;
x1=[1 0 0 0 0 0];
x2=[0 1 0 0 0 0];
x3=x1+2*x2;

w1=n.*x1;
w2=n.*x2;
w3=n.*x3;
w4=w1+2*w2;


subplot(4,1,1);
stem(n,w1);
title('z1');

subplot(4,1,2);
stem(n,w2);
title('z2');

subplot(4,1,3);
stem(n,w3);
title('z3');

subplot(4,1,4);
stem(n,w4);
title('z1+2*z2');

sgtitle("z[n]=nx[n]");