clc;
close all;
%x[n]= input('Enter x: ');
x = [1 2 3 -4 4];

%x = input('Enter the 1st Sequence : '); 
%y = input('Enter the 2nd Sequence : '); 
flpx = fliplr(x);

Lx = length(x);
len = Lx + Lx - 1;
for l = 1 : len
    Rxx(l)= 0;
    for n = 1 : Lx
        if(l - n >= 0 && l - n < length(flpx))
            Rxx(l) = Rxx(l) + x(n) .* flpx(l - n + 1);
        end
    end
end
figure;
subplot(2, 1, 1);
t1 = 0:1:Lx-1;
stem(t1, x, '-bO'); 
xlabel('time');
ylabel('Amplitude of x(n)');
title('Input signal x(n)');
hold on;

subplot(2, 1, 2);
disp('the Auto correlation values are : ');
disp(Rxx);
%t = (-(length(x) - 1) : 1 : (length(x) - 1));
t = -(len - Lx) : 1 : (len - length(flpx));
stem(t, Rxx, '-r^');
xlabel('time');
ylabel('Amplitude');
title('Auto Correlation of x(n) without xcorr() function');
grid on;
