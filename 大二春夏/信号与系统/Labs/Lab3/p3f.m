clear;
clc;

t=-5:0.01:5;
t_=0:0.01:5;

a=[-1 2];
b=1;

x=exp(5*t/2).*(t<=0);
x_r=exp(-5*t/2).*(t>=0);

y_sim=lsim(b,a,x_r,t);
y_sim=flip(y_sim);

y_ana = (2/9)*exp(2.5*t).*(t <= 0) - (2/9)*exp(-2*t).*(t <= 0);

subplot(2,1,1);
plot(t,y_sim);
title('$y_{sim}$','Interpreter','latex')

subplot(2,1,2);
plot(t,y_ana);
title('$y_{ana}=(\frac{2}{9} \cdot e^{\frac{5}{2}t}  - \frac{2}{9} \cdot e^{-2t}) \cdot u(-t) $','Interpreter','latex')