clear all;
close all;
clc;

%Unit step function 

% Discrete
nd1=input('Enter the lower limit = ');
nd2=input('Enter the upper limit = ');

nd=nd1:nd2;
xd=[nd>=0];

subplot(2,1,1);
stem(nd,xd);
title('Unit Step Signal - Discrete');

%Continuous
nc=input('Enter the upper limit = ');

t=0:nc;
xc=[t>=0];

subplot(2,1,2);
plot(t,xc);
title('Unit Step Signal - Continuous');

savefig('Example_03_Figure_01.fig');