clc
clear
close all

syms z

z1 = [(-0.5+1j*0.5) (-0.5-1j*0.5)]';
p = 1/4;
k1 = 1;

[num , denum ] = zp2tf(z1,p,k1);

num
denum



