k = 10;
omega = 2;
[z,t] = meshgrid(0:0.01:10,0:0.01:10);
wave = cos(k*z - omega*t);
pcolor(t,z,wave);
shading flat;
color bar;
xlabel('t');
ylabel('z');
axis square