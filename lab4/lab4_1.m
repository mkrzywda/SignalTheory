close all; clear all; clc;
a=load('corr_01.txt');
t=a(:,1);
x=a(:,2);
subplot(211), plot(t,x)
% prostpkot --> czas=7s, amp=0.7
% trójkat --> czas=10s, amp=0.8
 
dt=t(2)-t(1);
pros=0.7*(0:dt:7); %stworzylismy czas równy 7 sekund
troj=0.8*(1-abs(-5:dt:5)/5)
xc=xcorr(x,troj); %tworzymy korelacje x z prostokatem
xc1=xcorr(1-x,1-troj)+xc
tc=-100:dt:100; %"z palca" wprowadzamy czas
nr=find(xc1==max(xc1(:)),3,'first') %maksimum wektora korelacji 
% przyrownujemy nasz wektor do tej wartosci, 1 to znaczy ile 
% takich wartosci ma zwrocic, (jesli sinus to zalezy od szerokosci 
% przedzialu) parametr first to kierunek, ktora pierwsze bierze,
% które nas zadawalajc, jesli nas interesuje pierwsze to wchodzimy 
% na pole minowe, funkcja find dostajemy numer próbki 
tc(nr) % przeliczamy polozenie wektora na czas w sekundach
subplot(212), plot(tc,xc1)% 'r' 'g' to kolor
% gauss --> czas trwania=20s, amp=0.8, std=2sgrt(2)
tg=-10:dt:10;
xg=0.8*exp(-tg.*tg/16);
xc=xcorr(x,xg);
nr=find(xc>0.9999*max(xc(:)),3,'first');
tc(nr)