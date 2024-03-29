clear all;
close all;
clc;

t = linspace(0,2*pi,100);
x = 3 + 6*cos(t);
y = -2 + 9*sin(t);

figure('Name','Equation figure parctice');

plot(x,y);
title('Graph of the equation');
xlabel('Value of x');
ylabel('Value of y');
axis([-6 12 -14 10]);
grid;
savefig('Exercise_10_Figure_01.fig');