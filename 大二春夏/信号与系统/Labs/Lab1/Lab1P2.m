%Lab1 P2

clc;clear;

N = 6;
n_periodic_x1 = 0:24;
n_non_periodic = 0:4*N;
n_periodic_x3 = 0:48;

x1 = cos(2*pi*n_periodic_x1/N) + 2*cos(3*pi*n_periodic_x1/N);
x2 = 2*cos(2*n_non_periodic/N) + cos(3*n_non_periodic/N);
x3 = cos(2*pi*n_periodic_x3/N) + 3*sin(5*pi*n_periodic_x3/2/N);

figure;

subplot(3, 1, 1);
stem(n_periodic_x1, x1, 'filled');
title('x_1[n] = cos(2\pi n/N) + 2cos(3\pi n/N) :period is 2N=12');
xlabel('n');
ylabel('x_1[n]');
grid on;

subplot(3, 1, 2);
stem(n_non_periodic, x2, 'filled');
title('x_2[n] = 2cos(2n/N) + cos(3n/N) :Not periodic');
xlabel('n');
ylabel('x_2[n]');
grid on;
%since T1=N*pi and T2=2N/3*pi;T=2N*pi,which is irrational

subplot(3, 1, 3);
stem(n_periodic_x3, x3, 'filled');
title('x_3[n] = cos(2\pi n/N) + 3sin(5\pi n/2N) :period is 4N=24');
xlabel('n');
ylabel('x_3[n]');
grid on;

sgtitle('Periodicity Analysis of Signals');
