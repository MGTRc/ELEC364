clc
clear
close all

syms z

num = [1.25 1 -0.125];
denum = [1 -0.5 1/16];

[z, p, k] = tf2zp(num , denum);

zplane(z,p);
title('Poles and Zeros of W(z)');



