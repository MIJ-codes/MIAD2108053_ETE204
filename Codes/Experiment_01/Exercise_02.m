clear all;
close all;
clc;

%Circuit problem
E = 100 + 10 * j;
IL = 5 + 5 * j;
Z = 2 * exp(j * deg2rad(40));
Vs = E + Z * IL;
m = abs (Vs);
an = rad2deg(angle (Vs));
