close all; clear all; clc;
Fs=50;
t=-5:(1/Fs):5;
x=exp(-t.*t/2);
xs=x+0.1*randn(size(t));
k=1;
X=fftshift(fft(xs));
f=linspace(-Fs/2,Fs/2,length(t));
for N=3:2:101;
LP=ones(1,N)/N;
x_avg=conv(xs,LP,'same');
x_med=medfilt1(xs,N);
x_wnr=wiener2(xs,[1 N]);
x_f=real(ifft(ifftshift(X.*(f<N/4))));
%plot(t,x,'r',t,x_avg,'g',t,x_med,'b',t,x_wnr,'y');
E_avg(k)=sqrt((x-x_avg)*(x-x_avg)');
E_med(k)=sqrt((x-x_med)*(x-x_med)');
E_wnr(k)=sqrt((x-x_wnr)*(x-x_wnr)');
E_f(k)=sqrt((x-x_f)*(x-x_f)');
k=k+1;
end
N=3:2:101;
plot(N,E_avg,'r',N,E_med,'g',N,E_wnr,'b',N,E_f,'k');
[E_avg E_med E_wnr]