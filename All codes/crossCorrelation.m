clc; 
clear all;
close all;

%determining Cross-Correlation
xn = [2 -1 3 7 1 2 -3];
yn = [1 -1 2 -2 4 1 -2 5];
flipy = fliplr(yn);

xlen = length(xn);
ylen = length(yn);
tlen = xlen + ylen - 1;

Xn = [xn, zeros(1, xlen)];
Yn = [flipy, zeros(1, ylen)];
%Rxy = zeros(1, tlen);
for l = 1: tlen
   Rxy(l) = 0;
   for n = 1 : xlen
      if(l - n + 1 > 0)
          Rxy(l) = Rxy(l) + Xn(n) * Yn(l - n + 1);
      end
   end
end

lmin = -(tlen - xlen);
lmax = tlen - ylen;
t = lmin : lmax;
stem(t, Rxy);
