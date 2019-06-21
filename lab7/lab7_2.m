close all; clear all; clc;
 
%Fs=50Hz, t=<-5,15>s,
%f=t/2 dla t=<0,3>, 1.5 dla t=(3,6> i 0 dla t=(6,8>
%Narysuj funkcje i jej rozwiniêcie dla N=60 wyrazów
 
Fs=50;
t=-5:(1/Fs):15;
xt=(t/2).*(t>=0 & t<=3)+1.5*(t>3 & t<=6)+0*(t>6 & t<=8);
FX=27*ones(size(t))/32;
 
for n=1:60
    an=(2/(n*n*pi*pi))*(cos(3*n*pi/4)-1)+((3/(2*n*pi))*sin((3*n*pi)/2));
    bn=(2/(n*n*pi*pi))*(sin(3*n*pi/4))-((3/(2*n*pi))*cos((3*n*pi)/2));
    FX=FX+an*cos(n*pi*t/4)+bn*sin(n*pi*t/4);
end
plot(t,xt,'.r',t,FX,'b')
                