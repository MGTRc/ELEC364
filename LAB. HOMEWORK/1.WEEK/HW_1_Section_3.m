% ELM364 - Digital Signal Processing
% Homework 1 - Section 3
% Mete Can Gazi
% 141024020  

clc;clear;close all
syms t n

T = 1/40;                                                   %Continous Time Period
Td = 1/240;                                                 %Discrete Time Sample Rate

Real(t) = 20*cos((80*pi*t) - (pi/4));                       %Real Side 
Imag(t) = 20*sin((80*pi*t) - (pi/4));                       %Imaginary side
Amp(t)  = sqrt( Real(t)*Real(t) + Imag(t)*Imag(t));         %Amplitude
Phase(t) = atan2(Imag(t),Real(t));                          %Phase

figure(1);
subplot(411);
ezplot(Real(t),[0:0.001:2*T]);
title('Real');
xlabel('Time'); ylabel('Amplitude');

subplot(412);
ezplot(Imag(t),[0:0.01:2*T]);
title('Imaginary');
xlabel('Time'); ylabel('Amplitude');

subplot(413);
ezplot(Amp(t),[0:0.01:2*T]);
title('Amplitude');
xlabel('Time'); ylabel('Amplitude');

subplot(414);
ezplot(Phase(t),[0:0.01:2*T]);
title('Phase');
xlabel('Time'); ylabel('Amplitude');

DReal(n) = 20*cos(80*pi*n*(Td) - (pi/4));   %Discrete Time Signal of Real Side;
DImag(n) = 20*sin(80*pi*n*(Td) - (pi/4));   %Discrete Time Signal of Imaginary Side;
DAmp(n)= sqrt(DReal(n)^2 + DImag(n)^2);     %Discrete Time Signal of Amplitude;
DPhase(n) = atan2(DImag(n),DReal(n));       %Discrete Time Signal of Phase;

Ns = 2*T/Td;                                %Sample number in two period;
n = 0:1:Ns;                                 %Sample number in two period;

figure(2);
subplot(411);
stem(n,DReal(n));
axis([0 Ns -30 30]);
title('Real');
xlabel('Sample'); ylabel('Amplitude');

subplot(412);
stem(n,DImag(n));
axis([0 Ns -30 30]);
title('Imaginary');
xlabel('Sample'); ylabel('Amplitude');

subplot(413);
stem(n,DAmp(n));
axis([0 Ns -30 30]);
title('Amplitude');
xlabel('Sample'); ylabel('Amplitude');

n = 0:1:Ns;
subplot(414);
stem(n,DPhase(n));
title('Phase');
xlabel('Sample'); ylabel('Amplitude');