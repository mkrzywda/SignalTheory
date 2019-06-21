close all; clear all; clc;
Fs=50;
t=-5:(1/Fs):5;
x=1.0*(abs(t)<1);
szum=rand(size(t));
xs=x+(szum<=0.025)*1-(szum>=0.975); %prawdopodobienstwo 2,5%
N=5;
LP=ones(1,N)/N;
x_avg=conv(xs,LP,'same');
x_med=medfilt1(xs,N); %pokrywa z linia czerwona, medianowa,
%filtracja adaptacyjna, filtr sam okresla jak mocno bedziemy filtrowac -
%filtracja winiera; 1x501 to winier powinien miec na (1,N), jesli 501x1
%to wtedy powinno byc (N,1) - pionowy
x_wnr=wiener2(xs,[1 N]);
plot(t,xs,'r',t,x_avg,'g',t,x_med,'b',t,x_wnr,'y');
E_avg=sqrt((x-x_avg)*(x-x_avg)');
E_med=sqrt((x-x_med)*(x-x_med)');
E_wnr=sqrt((x-x_wnr)*(x-x_wnr)');
[E_avg E_med E_wnr]