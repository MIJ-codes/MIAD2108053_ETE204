clear all;
close all;
clc;

% Problem 1: Derivative
syms a t b c
expr = exp(-a*t)*sin(b*t + c);
diff_expr = diff(expr, t)

% Problem 2: Limits
syms x
limit1 = limit(5/(x - 2), x, -2, 'left')
limit2 = limit(5/(x - 2), x, 0)

% Problem 3: Integral
integral_expr = int(1 / (1 + tan(x)), x, 0, pi/2)

% Problem 4: Summation
k = [1:20];
sum_expr = sum(1./(((-1).^(k-1)).*(k.^2)))
