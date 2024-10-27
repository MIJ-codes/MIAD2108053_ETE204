clear all;
close all;
clc;

syms t w
ifourier (dirac (w), w, t)

ifourier (2 * exp (-abs (w)) - 1, w, t)

ifourier (1 / (w^2 + 1), w, t)