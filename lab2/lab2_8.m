clear all; close all; clc;
 
%funkcja Heaviside'a do usuwania pewnych wartosci przed startem, zerowania
 
t=-5:0.01:5;
x=(t>=0).*sinc(4*t); %okresla w ktorym momencie mamy start
plot(t,x)
 