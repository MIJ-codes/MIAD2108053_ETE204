clear all;
close all;
clc;

%Scaling a trianguler pulse signal
t = -5:0.0001:5; % time vector of 5 seconds
x = tripuls (t ,2) ; % triangular pulse of width 2

subplot (3 ,1 ,1)
plot(t ,x ,'r'); 
grid;
title ('Triangular pulse with width of 2');

t1 = 2* t ; % new time vector scaled by 2
x1 = tripuls (t1 ,2) ; % scaled triangular pulse

subplot (3 ,1 ,2)
plot(t ,x1 ,'b');
grid;
title ('Triangular pulse with width of 1');

t3 = 1/2* t; % new time vector scaled by 0.5
x3 = tripuls (t3 ,2) ; % scaled triangular pulse

subplot (3 ,1 ,3)
plot(t ,x3 ,'g');
grid;
title ('Triangular pulse with width of 4');

savefig('Example_08_Figure_01.fig');