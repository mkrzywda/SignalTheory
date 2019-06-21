clear all; close all; clc;

%sygnal prostokatny

% t=<0,15>s, dt=0.01, pros dla t=<6,10>, amp=2.5
% stworz wykres i policz srednia
 
t=0:0.01:15; %dlugosc wykresu
x=2.5*(t>=6 & t <=10); % od 6 do 10 ma wysokosc 2.5
plot(t,x) %tworzenie wykresu
ylim([-1,3.5]); %zeby bylo ladnie graficznie
[mean(x) 2.5*(10-6)/(15-0)] %liczenie sredniej
[x*x'*0.01 (2.5)^2*(10-6)] %liczenie energii, x*x' to mnozenie macierzy x' to macierz transponowana
% lub sum(x.^2)=x*x'