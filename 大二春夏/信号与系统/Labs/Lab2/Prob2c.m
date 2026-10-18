clear;
clc;

t=-1:0.05:4;
t_=0:0.05:4;

delta1=0.1;
delta2=0.2;
delta3=0.4;

d1=[zeros(1,length(-1:0.05:-0.05)) ones(1,length(0:0.05:delta1-0.05))/delta1 zeros(1,length(delta1:0.05:4))];
d2=[zeros(1,length(-1:0.05:-0.05)) ones(1,length(0:0.05:delta2-0.05))/delta2 zeros(1,length(delta2:0.05:4))];
d3=[zeros(1,length(-1:0.05:-0.05)) ones(1,length(0:0.05:delta3-0.05))/delta3 zeros(1,length(delta3:0.05:4))];

a=[1 3];
b=1;
h1=lsim(b,a,d1,t);
h2=lsim(b,a,d2,t);
h3=lsim(b,a,d3,t);
h=impulse(b,a,t_);
h=[zeros(1,length(-1:0.05:-0.05)) h.'];

subplot(3,1,1);
hold on;
p1 = plot(t,h, 'DisplayName', 'h(t)');
p2 = plot(t,h1, 'DisplayName', 'h1');
title('h1');
legend([p1, p2]);

subplot(3,1,2);
hold on;
p1 = plot(t,h, 'DisplayName', 'h(t)');
p2 = plot(t,h2, 'DisplayName', 'h2');
title('h2');
legend([p1, p2]);

subplot(3,1,3);
hold on;
p1 = plot(t,h, 'DisplayName', 'h(t)');
p2 = plot(t,h3, 'DisplayName', 'h3');
title('h3');
legend([p1, p2]);
