clear;
clc;

t=-1:0.05:4;
t_=0:0.05:4;
u=[zeros(1,length(-1:0.05:-0.05)) ones(1,length(0:0.05:4))];

s=(1/3-1/3*exp(-3*t)).*u;
h=exp(-3*t).*u;

a=[1 3];
b=1;

s1=step(b,a,t_);
s1=[zeros(1,length(-1:0.05:-0.05)) s1.'];

h1=impulse(b,a,t_);
h1=[zeros(1,length(-1:0.05:-0.05)) h1.'];

subplot(2,2,2);
plot(t,s);
title('unit step response of $s(t) = \frac{1}{3} - \frac{1}{3} e^{-3t}$', 'Interpreter', 'latex')

subplot(2,2,1);
plot(t,s1);
title('s(t)');

subplot(2,2,4);
plot(t,h);
title('unit impulse response of $s(t) = e^{-3t}$', 'Interpreter', 'latex')

subplot(2,2,3);
plot(t,h1);
title('h(t)');