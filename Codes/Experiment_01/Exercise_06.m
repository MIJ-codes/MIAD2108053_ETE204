clear;
clc;
t = 0:0.05:5;
x = exp(-0.8*t);
y = cos(8*t);
z = 10.*x.*y;

plot(t,z);
title('An exponentially decaying sinusoid');
xlabel('Time');
ylabel('Value of z');
axis([0 inf -12 12]);
grid;
savefig('Exercise_06_Figure_01.fig');