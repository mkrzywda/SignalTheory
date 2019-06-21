clear all; close all; clc;
 
%sygnal harmoniczny
 
t=0:0.01:4;
x=(3-(3-1)*t/3).*sin(2*pi*5*t);
plot(t,x)