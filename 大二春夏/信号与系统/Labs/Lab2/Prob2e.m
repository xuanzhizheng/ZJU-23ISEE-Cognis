clear;
clc;

t=-1:0.05:4;

a1 = 4; a2 = 8; a3 = 16;
da1 = a1 * exp(-a1 * t) .* (t >= 0);
da2 = a2 * exp(-a2 * t) .* (t >= 0);
da3 = a3 * exp(-a3 * t) .* (t >= 0);

h = exp(-3 * t) .* (t >= 0);

a=[1 3];
b=1;
y1 = lsim(b, a, da1, t);
y2 = lsim(b, a, da2, t);
y3 = lsim(b, a, da3, t);

subplot(3,1,1);
plot(t, y1, 'b', t, h, 'r--');
legend('Response to d_4(t)', 'Impulse Response h(t)');
title('Response for a = 4');

subplot(3,1,2);
plot(t, y2, 'b', t, h, 'r--');
legend('Response to d_8(t)', 'Impulse Response h(t)');
title('Response for a = 8');

subplot(3,1,3);
plot(t, y3, 'b', t, h, 'r--');
legend('Response to d_{16}(t)', 'Impulse Response h(t)');
title('Response for a = 16');