clear all;
close all;
clc;

%Folding a Discrete-time signal
n = 0:8;
x = [0 0 1 2 3 4 5 4 3];

subplot(2,1,1);
stem(n,x); 
title('x(n) signal');
xlabel('n'); 
ylabel('x(n)');

m=-fliplr(n); 
y=fliplr(x);

subplot(2,1,2);
stem(m,y); 
title('y(n)=x(-n) signal');
xlabel('n'); 
ylabel('y(n)');

savefig('Example_07_Figure_01.fig');