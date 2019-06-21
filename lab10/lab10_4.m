close all; clear all; clc;
a=load('trasa_02.txt');
% % dt=0.25ms
% % wyswietl, policz WA
dt=0.25*0.001;
Fs=1/dt;
t=(0:length(a)-1)'*dt; %czas od 0 do dlugosci a, ' potrzebny zeby obrócic wektor pionowy a na poziomy
X=fftshift(fft(a));
f=linspace(-Fs/2, Fs/2, length(a))';
WA=abs(X);
BS=1.0*(abs(f)>150);
x_new=real(ifft(ifftshift(BS.*X)));
subplot(211), plot(t,a, 'r', t, x_new, 'g');
subplot(212), plot(f,WA, 'r', f, BS*150, 'g');