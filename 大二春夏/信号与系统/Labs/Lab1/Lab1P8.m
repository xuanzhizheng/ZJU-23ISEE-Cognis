function xr = sreal(x)
    xr = real(x);
end

function xi = simag(x)
    xi = imag(x);
end

syms t
x = exp(1i*2*pi*t/16) + exp(1i*2*pi*t/8);

xr = sreal(x);
xi = simag(x);

figure;
ezplot(xr, [0, 32])
grid on
xlabel('t')
ylabel('Re\{x(t)\}')
title('Real Component of x(t)')

figure;
ezplot(xi, [0, 32])
grid on
xlabel('t')
ylabel('Im\{x(t)\}')
title('Imaginary Component of x(t)')
