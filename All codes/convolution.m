clc;
clear all;
close all;

% convolution between two sequence
xn = [1 2 1 -1]; % set initial value
hn = [1 2 3 1]; % set initial value

xlen = length(xn);
hlen = length(hn);

%X = [xn, zeros(1, xlen)];
%H = [hn, zeros(1, hlen)];
Y = zeros(1, xlen + hlen - 1);
for i = 1 : xlen + hlen - 1
    %Y(i) = 0;
    for j = 1 : xlen
        if(i - j + 1 > 0 && (i - j + 1 <= xlen))
            Y(i) = Y(i) + xn(j) * hn(i - j + 1);
        end
    end
end

xlow = input('Enter the lower index of x(n): ');
hlow = input('Enter the lower index of h(n): ');

nlow = xlow + hlow;
nhigh = (xlen + xlow -1 ) + (hlen + hlow - 1);
t = nlow : nhigh;
stem(t, Y);
