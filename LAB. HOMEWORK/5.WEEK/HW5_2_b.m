clc
clear
close all

n = 0:1:3;
u = [1 1 1 1];
u2 = [0 0 1 1];

h = (1/4).^(n).*u + 2*(1/4).^(n-2).*u2;
stem(n,h,'r*');
title('h[n]');