% ELM364 - Digital Signal Processing
% Homework 1 - Section 2
% Mete Can Gazi
% 141024020     

clc;clear;close all
syms t n

%Finding Common Period;
f(t) = cos(500*pi*t) + sin(800*pi*t);       %Functions
freq = gcd(250,400);                        %Common Frequecny of the funtion;
T = 1/freq;                                 %Period(s) of the function;

%Plotting Continous Time Signal
subplot(211);
ezplot(f(t),[0:0.001:2*T]);                             %Plotting of function for 2 period;
legend('cos(500*pi*t) + sin(800*pi*t)');    
title('Continous Time Signal')
xlabel('Time'); ylabel('Amplitude');                    %Defined axis;

%Discrete Time Signal
subplot(212);
N = 1/1600;                                             %Sample Period;
Nd = 2*T/N;                                             %Sample number in a two period;
n = 0:1:Nd;
fd = cos(500*pi*N*n) + sin(800*pi*N*n);                 %Discrete-Time Signal
stem(n,fd);
legend('cos(500*pi*N*n) + sin(800*pi*N*n)');    
title('Discrete Time Signal')
xlabel('Sample'); ylabel('Amplitude');
axis([0 Nd -3 3]);