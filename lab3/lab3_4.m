%% zadanie
close all; clear all; clc;
%t=<0,20>s, F=200 Hz
% t=<0,6>s, trojkatny, tw=3s, amp=2, szer=6
%t=<8,14>s,Gaussa, amp =1.5, sr=11s,std=0.5
%t=<15,19>s /|/| szerokosc zabka 2s, amp=3
%stworz wykres, policz srednia i energie
 
t=0:(1/200):20;
x=2*(1-abs(t-3)/3).*(t>=0 & t<=6);
x=x+1.5*exp((-(t-11).*(t-11))/(2*0.5*0.5)).*(t>=8 & t<=14);
x=x+3*mod(t-1,2)/2.*(t>=15 & t<=19);
plot(t,x)
ylim([-1,4])
[mean(x),x*x'/200]
 
                               
 