close all; clear all; clc;
% widomo amplitudowe
Fs=100;
t=0:(1/Fs):10;
x=3*(abs(t-5)<2); %sygnal prostokatny, o srodku w 5 i wysokosci 3
subplot(211), plot(t,x);
xlabel('Czas [s]');
XT=fft(x);  %prosta, szybka transformacja fouriera
XT=fftshift(XT); 
WA=abs(XT);
WF=angle(XT); %widmo amplitudowe i fazowe sa funkcj¹ czêstotliwosci!! 
              %Wyœwietlamy nie w funkcji czasu!
%f=linspace(0,Fs,length(t)); %rowny odstep tworzy wektor 
                             %o wartosci od 0 do Fs o dlugosci length(t)
f=linspace(-Fs/2,Fs/2,length(t));                            
subplot(212), plot(f,WA);
xlabel('Czestotliwosc [Hz]');