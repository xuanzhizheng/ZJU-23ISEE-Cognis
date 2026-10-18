clear;
clc;

t=-10:0.01:10;

a1=[1 2 26];
b1=5;

x=(t>=-3).*(t<=2);
x_r=(t>=-2).*(t<=3);

y1=lsim(b1,a1,x,t);

a2=[-1 -1];
b2=1;

y2=lsim(b2,a2,x_r,t);
y2=flip(y2);

subplot(3,1,1);
plot(t,y1);
title('$y_{1}$','Interpreter','latex')

subplot(3,1,2);
plot(t,y2);
title('$y_{2}$','Interpreter','latex')

subplot(3,1,3);
plot(t,y1+y2);
title('$y$','Interpreter','latex')