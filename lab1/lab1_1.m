close all; clear all; clc;
 
close all; clear all; clc;
t=0:0.01:2*pi;
x=sin(t);
y=cos(2*t);
plot(t,x,'d-k',t,y,'or')
xlabel('os y');
ylabel('os y');
ylim([-2,2]);
legend('sinus','cosinus')
hold on
plot(t,x+y,':b');
hold off
subplot(221), plot(t,x);
subplot(222), plot(t,y);

subplot(2,2,[3,4]), plot(t,x+y);
xlabel('os x');
ylabel('os y');
ylim([-2,2]);
legend('sinus','cosinus')
