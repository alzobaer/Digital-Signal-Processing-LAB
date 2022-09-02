close all
clearvars
%x = input('Enter x: ')
x = [1 2 1 -1]; 
Xlow = input('Enter starting range of x(n) : ');
%h = input('Enter h: ')
h = [1 2 3 1];
Hlow = input('Enter starting range of h(n) : ');
Xup = length(x) + Xlow - 1;
Hup = length(h) + Hlow - 1;

nlow = Xlow + Hlow;
nup = Xup + Hup;
% convolution process start
m = length(x);
n = length(h);
X = [x, zeros(1, n)];
H = [h, zeros(1, m)];
for i = 1 : n + m - 1
    Y(i)= 0;
    for j = 1 : m
        if(i - j + 1 > 0)
            Y(i) = Y(i) + X(j) * H(i - j + 1);
        end
    end
end
% plot results
figure;
subplot(3,1,1); 
stem(x, '-b^'); 
xlabel('n');
ylabel('x[n]'); 
grid on;
title('Input Signal x[n]');

subplot(3,1,2); 
stem(h, '-ms');
xlabel('n'); 
ylabel('h[n]'); 
grid on;
title('Impulse Response h[n] ');

disp('Convolution values are of x(n) and h(n): ');
disp(Y);
subplot(3, 1, 3); 
t = nlow : 1 : nup;
stem(t, Y, '-ro');
ylabel('Y[n]'); 
xlabel('time'); 
ylabel('Amplitude');
grid on;
title('Convolution of Two Signals without conv function');


