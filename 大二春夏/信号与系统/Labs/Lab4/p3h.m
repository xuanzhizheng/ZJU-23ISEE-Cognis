clear;
clc;

load plus.mat;
X = fft2(double(x));
X_shifted = fftshift(X);

figure;
subplot(2,2,1);
imagesc(x);
colormap(gray);
title('$\mathrm{Original\ Image}$', 'Interpreter', 'latex');
axis image;

subplot(2,2,2);
imagesc(log(abs(X_shifted)+1));
colormap(gray);
title('$\mathrm{2D\ FFT\ Magnitude}$', 'Interpreter', 'latex');
axis image;

subplot(2,2,3);
imagesc(angle(X_shifted));
colormap(gray);
title('$\mathrm{2D\ FFT\ Phase}$', 'Interpreter', 'latex');
axis image;

subplot(2,2,4);
x_reconstructed = real(ifft2(X));
imagesc(x_reconstructed);
colormap(gray);
title('$\mathrm{Reconstructed\ Image}$', 'Interpreter', 'latex');
axis image;
