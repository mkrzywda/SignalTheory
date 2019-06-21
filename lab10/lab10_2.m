close all; clear all; clc;
% t=<-5,5>, Fs=200;
% x: pros, sr dla t=0, szer=1, amp=1
% sygnal, WA
Fs=200;
t=-5:(1/Fs):5;
x=1.*(abs(t-0)<0.5); %sygna³ prostok¹tny
f=(Fs/2)*t/5;
X=fftshift(fft(x));
WA=abs(X);
LP=1.0*(abs(f)<7);
BW=1./(1+(f/7).^6); %filtr Butterwortha, nieidealny dolnoprzepustowy, ¿eby by³ górnoprzepustowy dajemy na pocz¹tku 1-...
BG=exp(-(f.*f)/(2*7*7)); %filtr Gaussa
x_new=real(ifft(ifftshift(X.*BW)));
x2=real(ifft(ifftshift(X.*LP))); %dla porównania filtr idealny
x3=real(ifft(ifftshift(X.*BG)));
subplot(211), plot(t,x, 'r', t, x_new, 'g', t, x2, 'b', t, x3, '.r');
ylim([-0.5, 1.5]);
subplot(212), plot(f,WA, 'r', f, 150*BW, 'g', f, 150*BG, '.r');