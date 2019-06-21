clear all; close all; clc;
 
%funkcja znaku (ujemna, dodatnia lub zero)
 
t=-5:0.01:5;
x=sign(t).*sinc(4*t);
plot(t,x)
 