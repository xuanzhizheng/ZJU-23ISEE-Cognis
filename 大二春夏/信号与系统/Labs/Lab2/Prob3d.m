clear;
clc;

load lineup.mat

alpha=0.5;
n=0:1:7000;
N=1000;

a=1;
b=[1 zeros(1,N-1) alpha];

y_ = filter(a,b,y);
sound(y ,8192);
pause(2);
sound(y_ ,8192);

subplot(2,1,1)
plot(y);
title('origin');

subplot(2,1,2)
plot(y_);
title('filtered')