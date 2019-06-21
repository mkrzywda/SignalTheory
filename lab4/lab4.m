close all; clear all; clc;
 
% t=<-10,10>s Fs=100Hz
% x1(t) = trojkat, amp=0.8, szer=8s, tw=-2s
% x2(t) = trojkat, amp=1.1, szer=5s, tw=5s
% stworz sygnaly, policzyc splot
% wyswietlic sygnaly i ich splot
 
Fs=100;
t = -10:(1/Fs):10 % wektor czasu
x1 = 0.8 *(1-abs(t+2)/4).*(t>-6 & t<2);
x2 = 1.1*(1-abs(t-5)/2.5).*(t>2.5 & t<7.5);
xx=conv(x2,x1,'same')/Fs;
tc=-20:(1/Fs):20;
xc=xcorr(x2,x1);
subplot(211),plot(t,x1,'r',t,x2,'g',t,xx,'b');
subplot(212),plot(tc,xc);
 