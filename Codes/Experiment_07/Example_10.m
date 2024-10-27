clear all;
close all;
clc;

syms x
cauchy = 1 / (pi * (1 + x^2));
fcauchy = fourier (cauchy)
fcauchy = expand (fcauchy)
ezplot (fcauchy)