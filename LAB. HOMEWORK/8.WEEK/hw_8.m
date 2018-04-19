clc
clear
close all

load 'handel.mat'
x = y;
N = length(x);
w = fftshift(fft(x))/N;
f = -pi : 2*pi/N : pi - 2*pi/N;
figure();
stem(f,w);
title('Fourier Transform of Original Signal');
xlabel('Frequency');
ylabel('Amplitude');

%% Section A - Part 1;
L1 = 3;
NL1 = L1 * length(x);
f1 = Fs*L1;

r1 = zeros(1,NL1);
r1(1:L1:end) = x;
Wr1 = fftshift(fft(r1,NL1))/NL1;
fr1 = -pi : 2*pi/NL1 : pi - 2*pi/NL1;

figure();
stem(fr1,Wr1);
title('Fourier Transform of r1[n]');
xlabel('Frequency');
ylabel('Amplitude');

%% Section A - Part 2;
L2 = 3;
NL2 = L2*length(x);
f2 = Fs*L2;

r2 = zeros(1,NL2);
r2(1:L2:end) = x;
Wr2 = fftshift(fft(r2,NL2))/NL2;
fr2 = -pi : 2*pi/NL2 : pi - 2*pi/NL2;

figure();
stem(fr2,Wr2);
title('Fourier Transform of r2[n](After Up-Sampling)');
xlabel('Frequency');
ylabel('Amplitude');

hlinear = [1/3 2/3 1 2/3 1/3];
r22 = conv(r2,hlinear);

NLh = length(r22);
Wr22 = fftshift(fft(r22,NLh))/NLh;
fr22 = -pi : 2*pi/NLh : pi - 2*pi/NLh;

figure();
stem(fr22,Wr22);
title('Fourier Transform of r2[n](After Interpolation Filter)');
xlabel('Frequency');
ylabel('Amplitude');

%% Section C
M = 2;
x_best = r22;
Fdown = f2/M;
Nm = length(x_best)/M;

y_down = x_best(1:M:end);
Wy = fftshift(fft(y_down,Nm))/Nm;
fy = -pi : 2*pi/Nm : pi -2*pi/Nm;

figure();
stem(fy,Wy);
title('Fourier Transform of y[n]');
xlabel('Frequency');
ylabel('Amplitude');
sound(y_down,Fdown);

%%Section D
display('       x(n)   r2(n)   y(m)');
display('fs     8192   24576   6144');
display('N      73113  219343  109672');
display('The parameters are gotten from WorkSpace.')