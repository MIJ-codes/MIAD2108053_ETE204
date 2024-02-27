clear all;
close all;
clc;

x = sym('x')
a = sym('alpha')
syms x y z

x = sym('x', 'real')
y = sym('y', 'real')
syms x y real

x = sym(0.1) % sym(0.1, 'r') does the same thing
x = 1/10
y = sym(sqrt(5))
y = sqrt(5)

y = sym(sqrt(5),'d')
y = 2.2360679774997898050514777423814

digits(10)
y = sym(sqrt(5),'d')
y = 2.236067977

z = double(y) % z is a double, not a sym object
z = 2.2361