clc
clear
close all
%Checking Time Invarient;
%x[n] -> System -> Shift;

xn1 = [1 -3 2 -3 4];
y1 = xn1.^2;
y1_shifted = [];

for i=1:1:size(y1,2)+3
  if i<=3
      y1_shifted(i) = 0;
  else
      y1_shifted(i) = y1(i-3);
  end
end
subplot(211);
n = 0:1:(size(y1_shifted,2)-1);
stem(n,y1_shifted,'r');
title('Time Invarient');
legend('x[n] -> System -> Shift');
xlabel('Sample'); ylabel('Amplitude');
grid on;

%x[n] -> Shift -> System;
xn1_shifted= [];
for i=1:1:size(xn1,2)+3
  if i<=3
      xn1_shifted(i) = 0;
  else
      xn1_shifted(i) = xn1(i-3);
  end
end
subplot(212);
y2 = xn1_shifted.^2;
stem(n,y2,'b');
title('Time Invarient');
legend('x[n] -> Shift -> System');
xlabel('Sample'); ylabel('Amplitude');
grid on;