clc;
close all;
clear all;

fs = 500;
n = 0 : 1 / fs : 1;
f = 10;

X = sin(2*pi*f*n);

%figure(1);
%plot(n, X);
%title('Original Signal');

y = X+rand(1, length(X));
subplot(3,1,1);
plot(n, y);
title('Noised Signal'), xlabel('t'), ylabel('Amplitude');

l = length(y);
nfft = 2.^nextpow2(l);

z_fft = fft(y, nfft);
freq = fs/2 * linspace(0, 1, nfft/2+ 1);
%subplot(3,1,2)
%plot(freq, z_fft(1:nfft/2+ 1));
%title('Frequency Spectrum');


%Design Butterworth filter
order = 5;
wn = [8 12]/(fs/2); %cutoff frequency

[b,a] = butter(order, wn, 'bandpass');

[h, w] = freqz(b, a, 1024, fs);
subplot(3,1,2);
plot(w, 20*log10(abs(h))), title('bandpass filter');

filt = filter(b,a,y);
subplot(3,1,3);
plot(n, filt), title('Actual Signal');


