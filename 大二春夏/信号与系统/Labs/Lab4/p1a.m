clear;
clc;

nh=-1:1;
h=[2 0 -2];

nx=0:2;
x=[1 0 1];

y=conv(h,x);

ny_start=nh(1)+nx(1);
ny=ny_start:(ny_start+length(y)-1);

stem(ny,y);
title('$y[n] = h[n] * x[n]$', 'Interpreter', 'latex');
xlabel('$n$', 'Interpreter', 'latex');
ylabel('$y[n]$', 'Interpreter', 'latex');
grid on;
