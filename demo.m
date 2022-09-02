%Unit Step Sequence:-
N = 21;
x = ones(1, N);
n = 0 : 1 : N - 1;
subplot(3, 2, 1);
stem(n, x);
xlabel('n');
ylabel('x(n)');
title('Unit Step Sequence');

%Exponential sequence: -
x2=0.8.^(n);
subplot(3,2,2);
stem(n,x2);
xlabel('n');
ylabel('x(n)');
title('Exponential Sequence');

% Ramp Sequence
t = 0:20;
subplot(3,2,3);
stem(t,t);
xlabel('c');
ylabel('Amplitude');
title(' Ramp Sequence');

%sine and cosine sequence
x = 0 : 0.04 : 6;
y = sin(2*pi*x);
subplot(3, 2, 4);
stem(x, y);
xlabel('e');
ylabel('Amplitude');
title('sinusoidal sequence');

%Aliasing Effect
x = 0 : 0.01 : 2;
y1 = cos(2*pi*10*x);
y2 = cos(2*pi*50*x);
subplot(3,2,5);
plot(x, y1);
plot(x, y2);

%sine and cosine sequence
x = 0 : 0.04 : 6;
y = sin(2*pi*x);
subplot(3, 2, 6);
stem(x, y);
xlabel('e');
ylabel('Amplitude');
title('sinusoidal sequence');

