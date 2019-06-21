close all; clear all; clc;
% t=<-5,15>, Fs=100;
% xt=sgn(-t)*Pros(amp=2, szer=3, srodek=0);
% N=50;
 
Fs=100;
t=-5:(1/Fs):15;
xt=sign(-t).*2.*(abs(t)<1.5);
FX=zeros(size(t));
for n=1:50
    bn=4*(cos(n*pi/2)-1)/(n*pi);
    FX=FX+bn*sin(n*pi*t/3);
end
plot(t,xt,'.r',t,FX,'b')