clear;
clc;

t=-5:0.01:5;
t_=0:0.01:5;

a=[-1 2];
b=1;

hs=impulse(b,a,t_);
hs=[zeros(length(t)-length(hs),1);hs];
hs=flip(hs);

y=-exp(-2*t).*(t<=0);

subplot(2,1,1);
plot(t,hs);
title('hs');

subplot(2,1,2);
plot(t,y);
title('$-e^{-2t}\mu (-t)$','Interpreter','latex')