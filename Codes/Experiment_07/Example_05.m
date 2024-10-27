clear all;
close all;
clc;

syms x t y
f = exp (-x^2) * exp (-t^2);
fourier (f, y)