clear all;
close all;
clc;

syms x y;

F = sqrt(sym(pi)) * exp(-y^2 / 4);
ifourier(F, y, x)