clear;
clc;

load plus.mat;

h_motion = fspecial('motion', 10, 45);
y_blur = conv2(double(x), h_motion, 'same');

h_wiener = fspecial('unsharp');
y_restored = conv2(y_blur, h_wiener, 'same');

figure;
subplot(2,2,1);
imagesc(x);
colormap(gray);
title('$\mathrm{Original}$', 'Interpreter', 'latex');
axis image;

subplot(2,2,2);
imagesc(y_blur);
colormap(gray);
title('$\mathrm{Motion\ Blurred}$', 'Interpreter', 'latex');
axis image;

subplot(2,2,3);
imagesc(y_restored);
colormap(gray);
title('$\mathrm{Restored}$', 'Interpreter', 'latex');
axis image;

subplot(2,2,4);
imagesc(abs(double(x) - y_restored));
colormap(gray);
title('$\mathrm{Difference}$', 'Interpreter', 'latex');
axis image;
