clc; 
close all; 
clear all;

f = 10;
Fs = 100;
ts = 1 / Fs;
t = 0 : ts : 1 - ts;
s = sin(2 * pi * f * t);
noise = 0.5 * randn(size(t));

x = randn(1, 100);
%x = noise + s; % input data
% here you can use any 1 by n size array
a = 1; % y_coefficient
b = [1/4 1/4 1/4 1/4]; % x_coefficient

% using build-in function
yn = filter(b, a, x);

% Creating Filter
y = zeros(1, length(x))
for i = 1 : length(x)
    for j = 2 : length(a)
        if (i >= j)
           y(i) = y(i) - a(j) * y(i - j + 1)
        end
    end
    for j = 1 : length(b)
       if(i >= j)
         y(i) = y(i) + b(j) * x(i - j + 1) 
       end
    end
end
figure(1)
plot(yn , 'r'); hold on; 
figure(2)
plot(y, 'b');


    