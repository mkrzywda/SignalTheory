close all; clear all; clc;
t=0:0.01:2*pi;
x=sin(t);
y=cos(2*t);

subplot(2,2,[3,4]), plot(t,x+y);