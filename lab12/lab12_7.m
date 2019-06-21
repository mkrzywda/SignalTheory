
%% analiza czasowo-czestotliwosciowa - STFT, wieloktrotne widmo amplitudowe dlka roznyh odcinkow sygnalu
close all; clear all; clc;
t=0:0.01:12;
Fs=100;
%dla t=<0,4>s sygnal harmoniczny amp=1, f=12hz
%dla t=(4,8>s sygnal harmoniczny amp1.2, f=22Hz
%dla t=(8,12>s sygnal harmoniczny amp=0.8, f=7Hz
%stworz sygnal x, policz i wyswietl widmo amplitudowe
 
x=sin(pi*t.*(t+1));
X=fftshift(fft(x));
f=linspace(-Fs/2,Fs/2,length(t));
WA=abs(X);
subplot(211), plot(t,x)
subplot(212), plot(f,WA)
okno=128; %szerokosc okna w ktorym bedziemy liczyc tranfoprmate fouriera
N=length(t);
A=zeros(okno,N-okno); %tabela dla wynikow
for k=1:(N-okno)
    xx=x(k:k+okno-1); %wyciagamy kawelk sygnalu
    WW=abs(fftshift(fft(xx)));
    A(:,k)=WW'; %zapisujemy wynik w k-atej kolumnie
end 
tt=(0:N-okno-1)/Fs;
ff=linspace(-Fs/2,Fs/2,okno);
figure;
imagesc(tt,ff,A); colorbar('vertical');