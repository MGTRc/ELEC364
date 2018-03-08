clc
clear all
close all

%Checking Linearity%
n = 0:1:6;

x1 = [0 2 3 4 5 6 9];  %Discrete signal x1[n];
x2 = [2 5 6 3 5 2 5];  %Discrete signal x2[n];

y1 = x1.^2;
y2 = x2.^2;

x3 = x1 + x2;
y3 = x3.^2;
ycheck = y1 + y2;

stem(n,y3 , 'r'); hold on;
stem(n,ycheck,'b');
legend('x1[n] + x2[n]','y1[n] + y2[n]');

