clear;
clc;

b = [1 2 5];
zs = roots(b);

a = [1 -3];
ps = roots(a);

plot(real(zs),imag(zs),'o');
hold on;
plot(real(ps),imag(ps),'x');
grid;
axis([-2 4 -3 3]);