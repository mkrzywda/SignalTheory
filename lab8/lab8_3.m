close all; clear all; clc;
 
Fs=100;
t=-5:(1/Fs):5;
x=2*(1-abs(t-0)/(0.5)).*(t>=-0.5 & t<=0.5);
XT=fft(x);
XT=fftshift(XT);
WA=abs(XT);
f=linspace(-Fs/2,Fs/2,length(t));
teor=Fs*(sinc(2*f/4)).*(sinc(2*f/4));
plot(f,WA,'.r',f,teor,'g');