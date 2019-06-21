%% transformata Fouriera
close all; clear all; clc;
 
Fs=100;
t=-5:(1/Fs):5;
x=1*(abs(t-0)<1);
XT=fft(x);
XT=fftshift(XT);
WA=abs(XT);
f=linspace(-Fs/2,Fs/2,length(t));
teor=abs(2*(sinc(2*f)*Fs)); %musi byc dwojka, teoretyczna wielkosc F(w),musi byc w wartosci bezwzglednej
plot(f,WA,'.r',f,teor,'g');