clear;
clc;

fs = 1000;
t = 0:1/fs:2-1/fs;
x = chirp(t, 10, 2, 100);

window_size = 256;
overlap = 128;
nfft = 256;

figure;
subplot(2,1,1);
plot(t, x);
title('$\mathrm{Chirp\ Signal}$', 'Interpreter', 'latex');
xlabel('$\mathrm{Time\ (s)}$', 'Interpreter', 'latex');

subplot(2,1,2);
spectrogram(x, window_size, overlap, nfft, fs, 'yaxis');
title('$\mathrm{Spectrogram}$', 'Interpreter', 'latex');
