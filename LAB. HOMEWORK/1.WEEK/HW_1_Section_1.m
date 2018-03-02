% ELM364 - Digital Signal Processing
% Homework 1 - Section 1
% Mete Can GAZ?
% 141024020                                  

clc;clear;close all
syms t t0 t1;

f1(t) = cos(2*pi/5*t);                      %Function 1;
f2(t) = sin(2*pi/5*t);                      %Function 2;
T = 2*pi/(2*pi/5);                          %Function 1 and Function 2 has some period;

ezplot(f1(t),[0:0.1:2*T]); hold on;         %Plotting of Function 1 for 2 Period;
ezplot(f2(t),[0:0.1:2*T]);                  %Plotting of Function 2 for 2 Period;
legend('cos(2*pi/5*t)', 'sin(2*pi/5*t)');
title('Graph of Functions');
xlabel('Time'); ylabel('Amplitude');        %Defined axis;