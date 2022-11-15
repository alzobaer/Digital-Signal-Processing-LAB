clc;
clear all;
close all;
%x[n]= input('Enter x: ');
x = [1 2 3 4];
y = [4 3 2 5 1];

%x = input('Enter the 1st Sequence : '); 
%y = input('Enter the 2nd Sequence : '); 
flpy = fliplr(y);

Lx = length(x);
Ly = length(y);
len = Lx + Ly - 1;
for l = 1 : len
    Rxy(l)= 0;
    for n = 1 : Lx
        if(l - n >= 0 && l - n < Ly)
            Rxy(l) = Rxy(l) + x(n) .* flpy(l - n + 1);
        end
    end
end
figure;
subplot(2, 1, 1);
t1 = 0 : 1 : Lx - 1;
stem(t1, x, '-bO'); 
xlabel('time');
ylabel('Amplitude of x(n)');
title('Input signal x(n)');
hold on;

subplot(2, 1, 2);
disp('the cross correlation values are : ');
disp(Rxy);
t = -(len - Lx) : 1 : (len - Ly);
stem(t, Rxy);
xlabel('time');
ylabel('Amplitude');
title('Cross Correlation of x(n) and y(n) without xcorr() function');
hold on;
