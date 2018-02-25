clc
clear

n = 0:1:50;

x1 = sin(0.05*pi*n);
x2 = sin(0.15*pi*n);
x3 = sin(0.20*pi*n);

y = x1 + 1/3*x2 + 1/5*x3;

stem(n,y); hold on;