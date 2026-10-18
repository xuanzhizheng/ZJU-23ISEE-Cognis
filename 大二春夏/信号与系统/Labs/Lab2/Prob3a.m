clear;
clc;

alpha=0.5;
N=1000;
n=0:1000;

he = [1 zeros(1,N-1) alpha];

stem(n,he);
title("he");