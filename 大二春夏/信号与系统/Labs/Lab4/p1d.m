clear;
clc;

n = 0:99;

h = (0.9).^n;
h(n >= 10) = 0;

x = cos(n.^2) .* sin(2*pi*n/5);

ny = 0:198;
y = conv(h, x);

stem(ny, y);
title('$y[n] = h[n] * x[n]$', 'Interpreter', 'latex');
xlabel('$n$', 'Interpreter', 'latex');
ylabel('$y[n]$', 'Interpreter', 'latex');
grid on;
