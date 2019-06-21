%%
close all; clear all; clc;
% x=0 dla t=<0,2)
% x=1 dla t=<2,4)
% x=2 dla t=<4,6)
% t=<-5,15> Fs=100Hz
% stwórz wykres funkcji i jej rozwiniêcie N=50 wyrazów
 
Fz=100;
t=-5:(1/Fz):15;
x=0*(t>=0& t<2)+1*(t>=2 & t<4)+2*(t>=4 & t<6);
FX=ones(size(t));
for n=1:50
    an=-(sin(4*n*pi/3)+sin(2*n*pi/3))/(n*pi);
    bn=(cos(2*n*pi/3)+cos(4*n*pi/3)-2)/(n*pi);
    FX=FX+an*cos(2*n*pi*t/6)+bn*sin(2*n*pi*t/6);
end
plot (t,x,'.r',t,FX,'b')

 