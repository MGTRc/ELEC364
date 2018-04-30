% 26 Nisan - Lab Calismasi - Hasan Huseyin Sonmez;
clc
clear
close all;

%%
N = 500;            % Number of points;
M = 60;             % Width of the window;
n = 0:M;            % time vector

wn = 0.54 - 0.46*cos(2*pi*n/M);
%figure(),plot(wn);

x1 = wn.*cos(0.2*pi*n);
x2 = wn.*cos(0.4*pi*n-pi/2);
x3 = wn.*cos(0.8*pi*n+pi/5);

xn = [x3 , x1, x2 , zeros(1,N-3*M-3)];
figure(),plot(xn);

Xw = fftshift(fft(xn,500))/500;
f = -pi : 2*pi/500 : pi - 2*pi/500;
%plot(f/pi,abs(Xw));

%%

