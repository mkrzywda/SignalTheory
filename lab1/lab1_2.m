close all; clear all; clc;
a = [1 2; 3 4]
a = [1:2;3:4]
a=ones(2,2)
b=zeros(3,1)
c=eye(3)
d=rand(2,3)
e=randn(3,5)

x=5*rand(5,7)-2
y=5*randn(10,6)-2
bb=x(1:2:5,[2:3,5])
median(bb(:))