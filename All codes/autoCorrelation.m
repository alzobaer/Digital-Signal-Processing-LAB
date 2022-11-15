clc;
clear all;
close all;

% defining auto-correlation
xn = [1 2 3 4];
flipx = fliplr(xn); 
xlen = length(xn);
tlen = 2 * xlen - 1;

Xn = [xn, zeros(1, xlen)];
FlipXn = [flipx, zeros(1, xlen)];

for l = 1 : tlen
    Rxx(l) = 0;
    for n = 1 : xlen
       if(l - n + 1 > 0)
           Rxx(l) = Rxx(l) + Xn(n) * FlipXn(l - n + 1);
       end
    end        
end






