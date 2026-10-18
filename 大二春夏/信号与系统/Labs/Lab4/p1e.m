clear;
clc;

n = 0:99;
L = 50;

h = (0.9).^n;
h(n >= 10) = 0;

x = cos(n.^2) .* sin(2*pi*n/5);

x0 = x(1:L);
x1 = x(L+1:2*L);

y0 = conv(h, x0);
y1 = conv(h, x1);

max_len = max(length(y0), L + length(y1));
y = zeros(1, max_len);
y(1:length(y0)) = y0;
y(L+1:L+length(y1)) = y(L+1:L+length(y1)) + y1;

ny = 0:(length(y)-1);

stem(ny, y);
title('$y[n] = y_0[n] + y_1[n-L]$', 'Interpreter', 'latex');
xlabel('$n$', 'Interpreter', 'latex');
ylabel('$y[n]$', 'Interpreter', 'latex');
grid on;
