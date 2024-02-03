clear;
clc;
t = 0:0.05:5;
x = exp(-0.8*t);
y = cos(8*t);
z = 10.*x.*y;

subplot(3,1,1), plot(t,x);
title('Exponential graph');
xlabel('Time');
ylabel('Value of x');
savefig('Exercise_07_Figure_01.fig');

subplot(3,1,2), plot(t,y);
title('Sinusoid graph');
xlabel('Time');
ylabel('Value of y');
savefig('Exercise_07_Figure_02.fig');

subplot(3,1,3), plot(t,z);
title('An exponentially decaying sinusoid');
xlabel('Time');
ylabel('Value of z');
savefig('Exercise_07_Figure_03.fig');

