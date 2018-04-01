clc
clear
close all

num = [1 0 2];
denum = [1 -0.25];

temp = impz(num,denum);

n = 0:1:3;
h = [temp(1:4)];
stem(n,h,'ro');