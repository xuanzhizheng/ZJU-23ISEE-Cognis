clear;
clc;

load plus.mat;

sigma = 1;
h_gauss = fspecial('gaussian', [5 5], sigma);
h_log = fspecial('log', [5 5], sigma);

y_gauss = conv2(double(x), h_gauss, 'same');
y_log = conv2(double(x), h_log, 'same');

figure;
subplot(2,2,1);
imagesc(x);
colormap(gray);
title('$\mathrm{Original}$', 'Interpreter', 'latex');
axis image;

subplot(2,2,2);
imagesc(y_gauss);
colormap(gray);
title('$\mathrm{Gaussian\ Filtered}$', 'Interpreter', 'latex');
axis image;

subplot(2,2,3);
imagesc(y_log);
colormap(gray);
title('$\mathrm{LoG\ Filtered}$', 'Interpreter', 'latex');
axis image;

subplot(2,2,4);
imagesc(abs(y_log));
colormap(gray);
title('$|\mathrm{LoG}|$ $\mathrm{Magnitude}$', 'Interpreter', 'latex');
axis image;
