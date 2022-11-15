clc; clear all; close all;
t0 = 0 : 0.001 : 1;
A1 = 10;
A2 = 20;
A3 = 40;

f1 = 4;
f2 = 8;
f3 = 16; % fm = 16 Hz
%Original signal
y0 = A1 * sin(2 * pi * f1 * t0) + A2 * sin(2 * pi * f2 * t0) + A3 * sin(2 * pi * f3 * t0);
subplot(3,2,1);
plot(t0, y0);
xlabel('time');
ylabel('y');
title('Composite Signal (fm = 16Hz)');

%After sampling of the original signal at nyquist rate
fs = 32; %nyquist rate fs = 2*fm (here fm = 16)
ts = 1/fs; %nyquist interval 1 / fs
t1 = 0:ts:1;
y1 = A1 * sin(2 * pi * f1 * t1) + A2 * sin(2 * pi * f2 * t1) + A3 * sin(2 * pi * f3 * t1);
subplot(3,2,2);
hold on;
plot(t0, y0, t1, y1);
xlabel('t');
ylabel('y');
title('sampling at nyquist rate (fs = 32 Hz)')

%sampling under nyquist rate fs < 2fm && fs > fm
fs = 25; %nyquist rate fs = 2*fm (here fm = 32)
ts = 1/fs;
t2 = 0:ts:1;
y2 = A1 * sin(2 * pi * f1 * t2) + A2 * sin(2 * pi * f2 * t2) + A3 * sin(2 * pi * f3 * t2);
subplot(3,2,3);
hold on;
plot(t0, y0, t2, y2);
xlabel('t');
ylabel('y');
title('sampling under nyquist rate (fs = 25Hz)')

%sampling over nyquist rate fs > 2fm
fs = 200; %nyquist rate fs = 2*fm (here fm = 32)
ts = 1/fs;
t3 = 0:ts:1;
y3 = A1 * sin(2 * pi * f1 * t3) + A2 * sin(2 * pi * f2 * t3) + A3 * sin(2 * pi * f3 * t3);
subplot(3,2,4);
hold on;
plot(t0, y0, t1, y1, t2, y2, t3, y3);
xlabel('t');
ylabel('y');
title('sampling over nyquist rate (fs = 200Hz)');

%Quantization of the discrete signal
% Times at which to sample the sine function
sig = y3; % Original signal, a sine wave
partition = -100:20:100; % Length 11, to represent 12 intervals
codebook = -120:20:100; % Length 12, one entry for each interval
[index,quants] = quantiz(sig,partition,codebook); % Quantize.
subplot(3,2,5);
plot(t3,sig,t3,quants,'.');
title('Quantization')
xlabel('t')
ylabel('x(t)')






