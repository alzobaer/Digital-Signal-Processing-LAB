clc;
clear all;
close all;

A = 5;
f = 3;
fs = 10;
t = 0 : 0.01 : 1;
%Original signal
xt = A * sin(2 * pi * f * t);
subplot(3,1,1);
plot(t, xt);

%sampling signal
n = 0 : 1 : fs;
xn = A * sin(2 * pi * f / fs * n);
subplot(3,1,2);
plot(n, xn);

%Quantization

nbit = 300;
qlevels = 2 .^ nbit; % 8 quantization level 

maxMag = max(xn);
minMag = min(xn);
scalingFactor = (maxMag - minMag) / qlevels;
qsig = xn / scalingFactor;
qsig = round(qsig);
qsig = qsig * scalingFactor;

figure(2)
plot(n, qsig);








