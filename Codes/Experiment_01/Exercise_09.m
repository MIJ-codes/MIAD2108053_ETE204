clear all;
close all;
clc;

x = rand(1,10);
xg = x;
x(x < 0.5) = [];