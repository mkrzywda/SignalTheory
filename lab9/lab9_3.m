close all; clear all; clc;
 
%t=-10,10s, Fs=200Hz
%x=x1+x2+x3
% x1: sygna³ Gaussa, srednia 0, odch=1,amp=1.5
% x2: harmoniczny amp=0.7, f=45Hz
% x3: harmoniczny amp=0.5, f=25Hz
% stworz filtr usuwajacy skladowa x3
 
Fs=100;
t=-10:(1/Fs):10;
x1=1.5*exp(-t.*t/2);
x2=0.7*sin(2*pi*t*45);
x3=0.5*sin(2*pi*t*25);
x=x1+x2+x3;
X=fftshift(fft(x));
WA=abs(X);
f=linspace(-Fs/2,Fs/2,length(t));
LP=abs(f)>30 | abs(f)<20; %| to plus; filtr pasmowo przepustowy
x_new=ifft(ifftshift(X.*LP));
subplot(211), plot(t,x,'r',t,x_new,'g');
subplot(212), plot(f,WA,'r',f,1000*LP,'g');