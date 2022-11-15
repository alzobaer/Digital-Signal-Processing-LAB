clc;
clear all;
close all;

% defining single tone signal
% x = Asin(2pift)
a = 5;
f = 10;
t = 0: 0.001: 1;
x = a * sin(2 * pi * f * t);
figure(1);
plot(t, x);


% defining composite signa;
a1 = 3;
a2 = 5;
a3 = 10;

f1 = 5; 
f2 = 10;
f3 = 100;

x1 = a1 * sin(2 * pi * f1 * t);
x2 = a2 * sin(2 * pi * f2 * t);
x3 = a3 * sin(2 * pi * f3 * t);
x = x1 + x2 + x3;
figure(2);
subplot(2, 2, 1)
plot(t, x);

% defining exponential function

alpha1 = 0.9;
n = 0 : 1: 100;
xn = alpha1 .^ n;
subplot(2, 2, 2);
stem(n, xn);

alpha2 = 1.2;
xn = alpha2 .^ n;
subplot(2, 2, 3);
stem(n, xn);

