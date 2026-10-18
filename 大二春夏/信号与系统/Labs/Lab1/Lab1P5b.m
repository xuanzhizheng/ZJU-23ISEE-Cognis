%Lab1 P5 b

clc;clear;
n = -5:9;
u = @(n) double(n >= 0);
x = u(n);
y = u(n)+u(n+1);

figure;
subplot(2,1,1);
stem(n, x,"filled");
title('Input x[n] = u[n]');
xlabel('n');
ylabel('x[n]');

subplot(2,1,2);
stem(n, y,"filled");
title('Output y[n] = x[n] + x[n+1]');
xlabel('n');
ylabel('y[n]');
