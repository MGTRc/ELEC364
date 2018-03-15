clc
clear
close all

syms w n

freq = pi;

h(w) = 1/3*(exp(-1i*w*0) + exp(-1i*w*1) + exp(-1i*w*2));

Amp = abs(h(freq));
Phase = angle(h(freq));

func = Amp*cos(pi*n + Phase);