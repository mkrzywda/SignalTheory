close all; clear all; clc;
 
a=load('sejs_1.txt');  % 48x1024 próbki czasowe
Fs=200; %Hz
t=(0:1023)/Fs; %wektor czasowy
figure;
hold on;
for k=1:48
    plot(t,a(:,k)+k-1);
    xc = xcorr(a(:,k),a(:,1));
    FB(k)=find(xc==max(xc(:)),1,'first');
end
 
tc=(-1023:1023)/Fs; %ilosc probek,probka zerowa musi miec zerowe przesuniecie
FB=tc(FB);  %otworz figur = FB
x=100+(0:47)*25;
hold off
figure;
plot(x,FB);
xlabel('RP distance [m]');
ylabel('FB time shift [s]');
v=(x(48)-x(1))/(FB(48)-FB(1))
v=mean((x(2:48)-100)./(FB(2:48))) %2 metody obliczania prêdkoœci
