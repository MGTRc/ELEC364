clc
clear
syms n;
n = 0:1:25;
f = cos(n*pi/4);

stem(n,f);