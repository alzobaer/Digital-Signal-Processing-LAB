clc;
clear all;
close all;
% original signal is = sin(2*pi*10*t)

x = randn(1, 100); % taking an array of size 1 by 100 random values

a = [1 -0.5 0.06]; % coefficient of y
b = [1 0.4];

%using built in function
yn = filter(b, a, x);
figure(1);
plot(yn);

%creating filter
xlen = length(x);
y = zeros(1, xlen);

for n = 1 : xlen
   for k = 2 : length(a)
       if(k <= n)
           y(n) = y(n) - a(k) * y(n - k + 1);
       end
   end
   
   for k = 1 : length(b)
        if(k <= n)
            y(n) = y(n) + x(n - k + 1);
        end
   end
end

figure(2);
plot(y);

