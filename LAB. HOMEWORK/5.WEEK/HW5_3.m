clc
clear
close all

num = [1 2/3 1/9];
denum = [1 -1/2 4 -2];
[z, p, k] = tf2zp(num,denum);
zplane(z,p);
title('Zeros and Poles of H(z)');
z
p