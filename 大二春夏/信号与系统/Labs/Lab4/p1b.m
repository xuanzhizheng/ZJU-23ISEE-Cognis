clear;
clc;

a=0;
b=3;
c=0;
d=2;

nh=a:b;
h=zeros(1,length(nh));
h(1)=1;
h(end)=1;

nx=c:d;
x=zeros(1,length(nx));
x(1)=1;
x(end)=1;

y=conv(h,x);

ny_start=min(a,b)+min(c,d);
ny_end=max(a,b)+max(c,d);
ny=ny_start:ny_end;

stem(ny,y);
title('$y[n] = h[n] * x[n]$', 'Interpreter', 'latex');
xlabel('$n$', 'Interpreter', 'latex');
ylabel('$y[n]$', 'Interpreter', 'latex');
grid on;