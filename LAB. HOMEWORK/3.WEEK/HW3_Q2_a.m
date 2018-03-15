clc
clear
close all

x = [0 0.5878 0.9511 0.9511 0.5878 0 -0.5878 -0.9511 -0.9511 -0.5878];
X = [];

N=length(x);

for k=1:N
    X(k)=0;
    for n=1:N
        X(k)=X(k)+ x(n).*exp(-1j.*2.*pi.*(n-1).*(k-1)./N);
    end
end

f=0:N-1;
subplot(311)
stem(0:N-1,x)
title('Sequence x (in time domain)')
xlabel('time')
ylabel('Amplitude')
grid;

subplot(312);
stem(f,abs(X));
title('Amp. of Fourier Coeffients');
ylabel('|X|')
grid on;

subplot(313);
stem(f,angle(X));
title('Angle of Fourier Coeffients');
xlabel('Frequency coefficients');
ylabel('<X');
grid on;