%Lab1 P5 a

clc;clear;
n = -5:5;
delta = (n == 0);
x1 = delta;
x2 = 2*delta;
y1 = sin(pi/2 * x1);
y2 = sin(pi/2 * x2);

figure;

subplot(2,1,1);
stem(n, y1,"filled");
title('y1[n] = sin(\pi/2 * x1[n])');
xlabel('n');
ylabel('y1[n]');

subplot(2,1,2);
stem(n, y2,"filled");
title('y2[n] = sin(\pi/2 * x2[n])');
xlabel('n');
ylabel('y2[n]');

sgtitle('Analysis of Signals Property');