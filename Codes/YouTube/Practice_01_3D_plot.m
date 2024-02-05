clear all;
close all;
clc;

x = linspace (0,10*pi,1000);

y = cos(x);
z = sin(x);
z = meshgrid(sin(x),cos (x));

figure ('Name','3D ploting');
surf(x,y,z);
shading flat;
colormap turbo;

savefig('Practice 01 3D ploting');