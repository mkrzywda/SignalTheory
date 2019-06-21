clear all; close all; clc;
 
%delta Diraca - funkcja impulsowa; im wê¿szy sygnal, tym wyzszy, stosuje
%sie krzywa gaussowaska; 
 
t=-5:0.01:5;
x=(t==0).*sinc(4*t); %w konkretnej probce czasu
plot(t,x)
 
