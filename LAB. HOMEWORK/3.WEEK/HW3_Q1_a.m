clc
clear
close all

syms w

h(w) = 1/3*(exp(-1i*w*0) + exp(-1i*w*1) + exp(-1i*w*2));

AmpH(w) = abs(h(w));
PhaseH(w) = angle(h(w));

figure(1);
subplot(211);
ezplot(AmpH(w),[0:0.001:2*pi]);
title("Amplitude of H(w)");
xlabel("Frequency");
ylabel("Amplitude");

subplot(212);
ezplot(PhaseH(w),[0:0.001:2*pi]);
title("Phase of H(w)");
xlabel("Frequency");
ylabel("Angle");