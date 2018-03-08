clc
clear
close all

%Created x[n] between -5 and 5;
n = -5:1:5;
xn = [];
for i=1:1:size(n,2)
    xn(i) = cos(pi*n(i))*sec3_un(n(i));
end

%Calculated y[n] between 0 and 4;
yn = [];
yn(1) = 1; %y[0] = 1; set zero
for i=2:1:5
    yn(i) = 0.5*yn(i-1) + xn(i+5) + 0.5*xn(i-1+5) + 0.5*xn(i-3+5);
end

n1 = 0:1:size(yn,2)-1;
stem(n1,yn);
axis([-1 5 -1.2 1.2]);
title('Graph of y[n]');
legend('y[n]');
xlabel('time'); ylabel('Amplitude');