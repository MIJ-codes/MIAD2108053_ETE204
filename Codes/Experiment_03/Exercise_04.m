clear all;
close all;
clc;

n = 6;
coefficients = Legendre_Coefficients(n);

x_value = 0.1;
result = polyval(coefficients, x_value);

disp(result);
