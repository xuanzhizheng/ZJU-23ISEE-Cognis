clear;
clc;

t=0:0.5:10;
x=[zeros(1,length(0:0.5:1.5)) ones(1,length(2:0.5:10))];


a=[1 1/2];
b=1;

y1=lsim(b,a,x,t);
y2=step(b,a,t);
y3=impulse(b,a,t);

y4=2*(1-exp(-t/2));

subplot(4,1,1);
plot(t,y1,'r');

subplot(4,1,2);
plot(t,y2,'r');

subplot(4,1,3);
plot(t,y3,'r');

subplot(4,1,4);
plot(t,y4,'g');

