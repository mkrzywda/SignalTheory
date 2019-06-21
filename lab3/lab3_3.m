close all; clear all; clc;
% t=<0,40>s Fs=100Hz;
% x1 - sza, dla 4,8,12,16,.... amp=2
% x1 - sza, dla 2,6,10,14,.... amp=-1
% x2 - Gaussa, szer=10s, sr=20, odch=w
% policz i wyswietl splot, prztestuj rozne w
 
t=0:0.01:40
x1=2*(mod(t,4)==0)-(mod(t,4)==2);
w=2;
x2=exp((-(t-20).^2)/(2*w*w));
xx=conv(x1,x2,'same')
plot(t,x1,'r',t,xx,'g')