%Lab1 P7

syms t T
x = sin(2*pi*t/T);

x5 = subs(x, T, 5);

ezplot(x5, [0, 10])
grid on
xlabel('t')
ylabel('x(t)')
title('Plot of sin(2\pi t / 5) over two periods')

