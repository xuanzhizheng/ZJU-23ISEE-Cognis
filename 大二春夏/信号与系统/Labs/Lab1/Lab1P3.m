%Lab1 P3

clc;clear;

n = 0:31;

x1 = sin(pi*n/4) .* cos(pi*n/4);
x2 = cos(pi*n/4).^2;
x3 = sin(pi*n/4) .* cos(pi*n/8);

figure;

subplot(3,1,1);
stem(n, x1,'filled');
title('Signal x1[n] = sin(\pi n / 4) cos(\pi n / 4) :T = 4');
xlabel('n');
ylabel('x1[n]');
%x1 = 1/2sin(pi*n/2) => T = 4

subplot(3,1,2);
stem(n, x2,"filled");
title('Signal x2[n] = cos^2(\pi n / 4)');
xlabel('n');
ylabel('x2[n]');
%x2 = 1/2[1+cos(pi*n/2)] => T = 4

subplot(3,1,3);
stem(n, x3,"filled");
title('Signal x3[n] = sin(\pi n / 4) cos(\pi n / 8)');
xlabel('n');
ylabel('x3[n]');
%x3 = 1/2[sin(3/8 pi*n) + sin(1/8 pi*n)] => T = 16