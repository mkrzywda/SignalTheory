%% filtracja
close all; clear all; clc;
% t=0-20s, Fs=100Hz
% x - sygna³ prostok¹tny o szerokoœci 6s, srodek dla t=10, amp=1 
% plus sygna³ harmoniczny, amp=0.5, f=17Hz
 
Fs=100;
t=0:(1/Fs):20;
x1=1*(abs(t-10)<=3);
x2=0.5*sin(2*pi*t*17);
x=x1+x2;
X=fftshift(fft(x));
WA=abs(X);
f=linspace(-Fs/2,Fs/2,length(t));
LP=abs(f)<=10; %filtr, filtr zmienno przepustowy, zmienic znak na >=15 np.
x_new=ifft(ifftshift(X.*LP));
subplot(211), plot(t,x,'b',t,x_new,'.r');
subplot(212), plot(f,WA,'r',f,400*LP,'g');