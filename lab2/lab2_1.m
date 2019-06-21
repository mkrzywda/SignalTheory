clear all; close all; clc;
 
%sygnal trojkatny

t=-5:0.01:5;
x=3*(1-abs(t-0)/(2)); % abs to wartosc bezwzgledna
% to samo co x=x.*(abs(t)<2);
x=x.*(x>0);
plot(t,x)
ylim([-0.5,4])
mean(x)
[x*x'*0.01]