clear all;
close all;
clc;

syms x y
f = exp (-x^2);
fourier (f, x, y)