clear all;
close all;
clc;

% Program to understand formatting a plot: Continuous time and Discrete time signals.
x=linspace(0,2*pi,25); % 0 to 2pi is divided in 25 equidistant points
y=sin(x);
subplot(2,1,1);
plot(x,y,'r');
title('Continuous');
subplot(2,1,2);
stem(x,y);
title('Discrete');
savefig('Example_01_Figure_01.fig');
