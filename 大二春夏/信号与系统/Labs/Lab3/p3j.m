clear;
clc;

a = [1 1 24 -26];
b = [1 7 21];
t = -5:0.01:5;
t_ = 0:0.01:5;
 
h_ana = (exp(t)+exp(-t).*sin(5*t)).*(t>=0);

h_sim = impulse(b,a,t_);
h_sim = [zeros(500,1);h_sim];

subplot(2,1,1);
plot(t,h_sim);
title('$h_{sim}$','Interpreter','latex')

subplot(2,1,2);
plot(t,h_ana);
title('$h_{ana}=\left[ e^t + e^{-t} \sin(5t) \right] u(t) $','Interpreter','latex')