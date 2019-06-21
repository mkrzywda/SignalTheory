%% szereg fouriera
close all; clear all; clc;
x=-6:0.01:6;
fx=1.0*(abs(x)<=1);
FX=ones(size(x))/2;
for n=1:20 %mozna zmieniac np zamiast 20 to 2 lub 200
    an=2*sin(n*pi/2)/(n*pi); %musi byc nawias
    FX=FX+an*cos(n*pi*x/2);
end
plot(x,fx,'.r',x,FX,'b');
 
%% szereg fouriera
close all; clear all; clc;
x=-6:0.01:6;
fx=(1-abs(x)/2).*(abs(x)<=2);
FX=ones(size(x))/3;
for n=1:50 %mozna zmieniac np zamiast 20 to 2 lub 200
    an=3*(1-cos(2*n*pi/3))/(n*n*pi*pi); %musi byc nawias
    FX=FX+an*cos(n*pi*x/3);
end
plot(x,fx,'.r',x,FX,'b');