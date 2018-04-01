clc
clear
close all

n = 0:1:3;
h = [1 1/4 33/16 33/64];

stem(n,h,'rd');
title('h[n]');