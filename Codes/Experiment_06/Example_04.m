clear all;
close all;
clc;

%unit ramp signal

n1=input('Enter lower limit = ');
n2=input('Enter upper limit = ');

n=n1:n2;
x=n.*[n>=0];

subplot(2,2,1);
plot(n,x,'r');
title('Continuous');

subplot(2,2,2);
stem(n,x,'b');
title('Discrete');

%Shortcut method for Generating Ramp Signal

ns=input('Enter the upper limit = ');

t=0:ns;

subplot(2,2,3);
plot(t,t);
title('Continuous');

subplot(2,2,4);
stem(t,t);
title('Discrete');

savefig('Example_04_Figure_01.fig');