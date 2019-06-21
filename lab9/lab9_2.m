%% Twierdzenie Parsevala
close all; clear all; clc;
 
t=-5:0.01:5;
amp=3;
odch=0.1;
srednia=1;
x=amp*exp(-((t-srednia).^2)/(2*odch.*odch));
plot(t,x)
 
L=x*x'*0.01 %liczymy energiê
WA=abs(fft(x));
P=WA*WA'*0.01/length(x) %przez dlugosc sygnalu. 0.01 to krok probkowania tak jak w energii