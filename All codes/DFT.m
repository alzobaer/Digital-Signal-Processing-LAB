clc;
clear all;
close all;

%defining dft
xn = [1, 1, 0, 0];
N = length(xn);  % N point dft
X(k) = zeros(1, N);
for k = 1 : N
    %X(k) = 0;
    for n = 1 : N 
          X(k) = X(k) + xn(n) * exp(-1i*2*pi*(k-1)*(n-1)/N);
    end
end

% Real part of DFT
% imaginary part of DFT
% magnnitude spectrum
% phase spectrum
% power spectrum
% inverse DFT

n = 0 : N - 1;
% original signal
figure(1);
subplot(2, 3, 1)
stem(n, xn);
xlabel('-------> time (n)');
ylabel('----------> magnitude of x(n)');
title('original signal');

% Real part 
subplot(2, 3, 2);
stem(n, real(X));
xlabel('-------> frequency (k)');
ylabel('----------> magnitude of X(k)');
title('Real part of DFT');

% Imaginary part 
subplot(2, 3, 3);
stem(n, imag(X));
xlabel('-------> frequency (k)');
ylabel('----------> magnitude of X(k)');
title('Imaginary part of DFT');


% magnitude spectrum
subplot(2, 3, 4);
stem(n, abs(X));
xlabel('-------> frequency (k)');
ylabel('----------> magnitude of X(k)');
title('Magnitude spectrum of DFT');

% Phase spectrum
pR = phase(X); % in radian
pD = rad2deg(pR); %in degree
subplot(2,3,5);
stem(n, pD);
title('Phase');
xlabel('Frequency(kHz)');
ylabel('Degree');

%power spectrum 
subplot(2, 3, 6);
p = abs(X) .^ 2;
stem(n, p);
title('power spectrum');
xlabel('Frequency(kHz)');
ylabel('magnitude');

%IDFT Caculation