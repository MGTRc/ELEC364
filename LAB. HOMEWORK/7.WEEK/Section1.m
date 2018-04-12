clc
clear
close all

N=10000;
ts = 0.0002;
deltaf = 1/(N*ts);
t = [0:N-1]*ts;

x = 4*cos(200*pi*t - pi/3);

Xf = fft(x);

f = [0:N-1]*deltaf;
Xf_shift = fftshift(Xf);
plot([-N/2:N/2-1]*deltaf*2*pi, abs(Xf_shift)/N*2*pi);
axis([-250*pi 250*pi 0 15]);
xlabel('Radyan/s');
ylabel('Amplitude');
title('X(w)');

