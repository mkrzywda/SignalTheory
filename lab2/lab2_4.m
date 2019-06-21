clear all; close all; clc;
 
%funkcja Sza
 
t=-5:0.01:5;
x=(mod(t,0.5)==0).*sinc(4*t+0.25);
plot(t,x)
 
