clear;
clc;

n = 0:4000;
N = 1000;
alpha = 0.5;
a = [1, zeros(1, N-1), alpha];
d = [1, zeros(1, 4000)];
her = filter(1, a, d);
stem(n,her);
title('her');