clc
clear 
close all

%Created x[n] between -8 and 8;
n1 = -8:1:8;
xn = zeros(size(n1));

for i=1:1:size(n1,2)
   a = sec1_xn(n1(i));
   xn(i) = a;
end

figure(1);
stem(n1,xn);
axis([-10 10 0 1.2]);
grid on;
title('Graph of x[n] ');
legend('x[n]');
xlabel('Sample');
ylabel('Amplitude');

%Created x[n-3] between -8 and 8;
xn2 = zeros(size(n1));
for i=1:1:size(n1,2)
   a = sec1_xn(n1(i)-3);
   xn2(i) = a;
end

figure(2);
stem(n1,xn2);
axis([-10 10 0 1.2]);
grid on;
title('Graph of x[n-3]');
legend('x[n]');
xlabel('Sample');
ylabel('Amplitude');

