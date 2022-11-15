clc;
close all;
clear all;

A1 = 10;
A2 = 20;
A3 = 40;

f1 = 4;
f2 = 8;
f3 = 16;
dt = 0.0001;
t = 0:dt:1;

signal1 = A1*sin(2*pi*f1*t)+ A2 * sin(2*pi*f2*t) + A3*sin(2*pi*f3*t);
plot(t, signal1);
hold on;

%Sampling
fs  = 64;
ts = 1/fs;
t = 0:ts:1;
signal2 = A1*sin(2*pi*f2*t) + A2*sin(2*pi*f2*t) + A3*sin(2*pi*f3*t);
stem(t, signal2, 'LineWidth', 2);
hold on;


%Quantization
nbits = 2; % 4 qantization levels
qLevels = 2.^nbits;
signalMin = min(signal2);
signalMax = max(signal2);  
scalingFactor = (signalMax-signalMin)/qLevels;
signal3 = signal2 / scalingFactor; 
signal3 = round(signal3);
signal3 = signal3 * scalingFactor;


plot(t, signal3, 'g');
hold on;
legend('Analog Signal', 'Sampled', 'Quantized');

