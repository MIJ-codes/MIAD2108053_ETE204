clear all;
close all;
clc;

x = -1:0.05:1;
y = x;
[xi, yi] = meshgrid(x,y);
zi = yi.^2 - xi.^2;
surfl(xi, yi, zi);
title('Hyperbolic paraboloid z = y^2 - x^2');
h = get(gca, 'Title');
set(h, 'FontSize', 14);

xlabel('x');
xl = get(gca,'xlabel');
set(xl, 'FontSize', 14);

ylabel('y');
yl = get(gca,'ylabel');
set(yl, 'FontSize', 14);

zlabel('z');
zl = get(gca,'zlabel');
set(zl, 'FontSize', 14);

savefig('Example_06_Figure_01.fig')