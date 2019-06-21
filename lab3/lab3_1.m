%% splot
close all; clear all; clc;
 
t=-10:0.01:10;
x=3*(abs(t)<=2);
xx=conv(x,x,'same')*0.01; %same czyli wszystkie takiego samego typu,
                          %splot
plot(t,x,'r',t,xx,'g')
conv([1 3 0 2],[-1 0 1],'valid')%konwolucja, valid - zwraca tylko 
                                %te probki gdzie drugi sygnal byl 
                                %w calosci wewnatrz pierwszego