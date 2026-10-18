clear;
clc;

nx=0:24;
x=(0.5.^(nx-2)).*[zeros(1,2) ones(1,23)];

nh=0:14;
h=ones(1,15);

y=conv(h,x);
ny=0:38;
stem(ny,y,'r');

hold on;
stem(ny,2-2.^(-ny),'g');

hold on;
stem(ny,y-2+2.^(-ny),'b');
xlabel('n');
ylabel('Amplitude');
legend('y*[n]','y[n]','y*[n]-y[n]');