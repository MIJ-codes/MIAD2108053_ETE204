clear all;
close all;
clc;

%Create matrix from linear equations and solve the equations
A = [1 0 3;8 2 -5;-1 5 3];
b = [10;-3;18];
x_inv = inv(A) * b;
x_left_divide = A\b;