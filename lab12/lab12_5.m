%% analiza czasowo-czestotliwosciowa - STFT, wieloktrotne widmo amplitudowe dlka roznyh odcinkow sygnalu
close all; clear all; clc;
t=0:0.01:12;
Fs=100;
%dla t=<0,4>s sygnal harmoniczny amp=1, f=12hz
%dla t=(4,8>s sygnal harmoniczny amp1.2, f=22Hz
%dla t=(8,12>s sygnal harmoniczny amp=0.8, f=7Hz
%stworz sygnal x, policz i wyswietl widmo amplitudowe
 
x1=1.0*sin(2*pi*t*12).*(t>=0 & t<=4);
x2=1.2*sin(2*pi*t*22).*(t>4 & t<=8);
x3=0.8*sin(2*pi*t*7).*(t>8 & t<=12);
x=x1+x2+x3;
X=fftshift(fft(x));
f=linspace(-Fs/2,Fs/2,length(t));
WA=abs(X);
subplot(211), plot(t,x)
subplot(212), plot(f,WA)
okno=32; %szerokosc okna w ktorym bedziemy liczyc tranfoprmate fouriera
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
imagesc(A); colorbar('vertical');
%okreslamy albo czas albo czestotliwosc, w zaleznosci od rozmiaru okna, nie
%da sie ustalic obu wartosci jednoczesnie
 