clc
clear
close all

n = 0:1:10;
w = pi;

n_axis_1 = 0:1:12;
n_axis_2 = 0:1:10;

x = cos(pi*n);
Fh = [0.33 0.33 0.33];
y_con = conv(x,Fh);
y_out = (1/3)*cos(pi*n);


stem(n_axis_1,y_con,'rx'); hold on;
stem(n_axis_2,y_out,'bo');
axis([0 10 -0.5 0.5]);
title('');
legend('Convolusyon','Theorical');
xlabel('Sample');
ylabel('Amplitude');