%Lab1 P1

clc;clear;

n = 0:9;
k_values = [1, 2, 4, 6];

figure;

for i = 1:length(k_values)
    k = k_values(i);
    wk = 2 * pi * k / 5;
    Tk = sin(wk * n);
    
    subplot(4, 1, i);
    stem(n, Tk, 'filled');
    title(['k = ', num2str(k)]);
    xlabel('n');
    ylabel('T_k[n]');
    grid on;
end

sgtitle('Signals T_k[n] = sin(w_k n) for different k values');

%A1.three unique signals
%A2.wk:2pi,k:5