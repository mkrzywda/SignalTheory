close all; clear all; clc;
a = rand(10,10)
if sum(a(:)) > 50
    disp('suma>50')
else 
    disp('nie jest')
end
 
for kz=1:2:10
    for kx=[1,2,5]
        disp(a(kz,kx))
    end
end