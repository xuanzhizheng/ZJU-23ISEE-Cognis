clear;
clc;

load plus.mat;
[M, N] = size(x);

h = fspecial('average', [3 3]);

y = conv2(x, h, 'same');

figure;
subplot(1,2,1);
imagesc(x);
colormap(gray);
title('$\mathrm{Original\ Image}$', 'Interpreter', 'latex');
axis image;

subplot(1,2,2);
imagesc(y);
colormap(gray);
title('$\mathrm{Filtered\ Image}$', 'Interpreter', 'latex');
axis image;
