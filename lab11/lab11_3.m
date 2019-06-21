%% filtracja dolno i gorno przepustowa 
close all; clear all; clc;
 
Fs=100;
t=0:(1/Fs):10;
x=1.0*(abs(t-5)<1);
N=35;
LP=ones(1,N)/N; %filtr jednorodny np dla trepazoew
odch=15;
LP=exp(-(-N:N).^2/(2*odch*odch)); %rozmycie gaussowskie
LP=LP/sum(LP(:)); %trzeba dodac do gaussowskiego
x_new=conv(x,LP,'same'); %tak samo jak konwolucja
plot(t,x,'r',t,x_new,'g');
 