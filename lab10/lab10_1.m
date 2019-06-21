close all; clear all; clc;
% t=<-10,5>, Fs=100Hz,
% x=x1+x2+x3
% x1: harmoniczny, f=13Hz, amp od 0.5 (t=-10) do 0.8 (t=5)
% x2: Gauss, sr = -2s, std=0.5, amp=1
% x3: harm, f=25Hz, amp=1,1
Fs=100;
t=-10:(1/Fs):5;
x1=sin(2*pi*t*13).*(0.5+0.3*(t+10)/15); %bo mamy 15 sekund, dodajemy ró¿nicê miêdzy minimaln¹ a maksymaln¹ amplitud¹, mno¿ymy przez pocz¹tkow¹
x2=1*exp(-(t+2).*(t+2)/0.5);
x3=1.1*sin(2*pi*t*25);
x=x1+x2+x3;
X=fftshift(fft(x));
WA=abs(X);
f=(Fs/2)*(t+2.5)/7.5; %bo sygna³ od -10 do 5, po³owa to 7,5, mo¿na zastapic linspace
BS=1.0*(abs(f)<=8 | abs(f)>=18); %filtr, dolny 8 Hz, ¿eby przepuœciæ Gaussa, drugi ¿eby przepuœciæ drug¹, bo filtrujemy wartoœæ 13
x_new=real(ifft(ifftshift(X.*BS)));
subplot(211), plot(t,x, 'r', t, x_new, 'g');
subplot(212), plot(f,WA, 'r', f, BS*500, 'g');
 