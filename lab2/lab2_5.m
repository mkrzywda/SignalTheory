clear all; close all; clc;
 
%krzywa gaussowska
t=-10:0.01:10;
amp=3;
sr=20;
odchy=0.1;
x=amp*exp(-((t-sr).^2)/2*odchy.*odchy)
ylim([-20,20])
plot(t,x)