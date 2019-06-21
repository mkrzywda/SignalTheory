close all; clear all; clc;
% t=<-10,10>, Fs=100Hz;
% x1 - trojkatny, tw=0s, amp=2, szer=6;
% x2 - prostokatny, srodek=0, amp=1, szer=w;
% stworz wykres splotu trojkatny z prostokatem dla 5 roznych w
 
t=-10:0.01:10;
x1=2*(1-abs(t)/3).*(abs(t)<3);
w=[1:2:9];
plot(t,x1,'r'); 
hold on;
for k=1:length(w)
    pros=1.0*(abs(t)<=w(k)/2);
    pros=pros/sum(pros(:)); %zamiast pisania 0.01 linijka ni¿ej
    xx=conv(x1,pros,'same');%*0.01;
    plot(t,xx);
end
hold off
 