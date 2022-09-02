clc
pkg load signal

%x = [1 2 3 4]
%y = [2 3 4 1]
x = [2 -1 3 7 1 2 -3]
y = [1 -1 2 -2 4 1 -2 5]
[h, lag] = mycorr(x, y)
lag
% using in build function
[hh, lags] = xcorr(x, y)
hh
lags
%
subplot(3, 1, 1)
grid on
stem(x, 'r', "linewidth", 2)
subplot(3, 1, 2)
stem(y, 'g', "linewidth", 2)
subplot(3, 1, 3)
stem(lag, h, 'm', "linewidth", 2)
hold on
plot(lags, hh, 'r', "linewidth", 2)
hold off
