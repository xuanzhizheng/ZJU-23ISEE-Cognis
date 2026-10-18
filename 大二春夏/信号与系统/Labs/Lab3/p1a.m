clear;
clc;

b1 = [1 5];
b2 = [2 5 12];
b3 = [2 5 12];

zs1 = roots(b1);
zs2 = roots(b2);
zs3 = roots(b3);

a1 = [1 2 3];
a2 = [1 2 10];
a31 = [1 2 10];
a32 = [1 2];
a3 = conv(a31,a32);

ps1 = roots(a1);
ps2 = roots(a2);
ps3 = roots(a3);

figure
plot(real(zs1),imag(zs1),'o');
hold on;
plot(real(ps1),imag(ps1),'x');
grid;
axis([-5 0 -2 2]);

figure
plot(real(zs2),imag(zs2),'o');
hold on;
plot(real(ps2),imag(ps2),'x');
grid;
axis([-2 0 -3 3]);

figure
plot(real(zs3),imag(zs3),'o');
hold on;
plot(real(ps3),imag(ps3),'x');
grid;
axis([-3 0 -3 3]);