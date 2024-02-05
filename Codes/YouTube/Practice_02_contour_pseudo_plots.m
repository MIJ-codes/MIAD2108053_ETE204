clear all;
close all;
clc;

[x y z] = peaks; %creates a function that gives peaks and holes

figure ('Name','Contour and pseudo color plots');

subplot(2,2,1), mesh(x,y,z), title('Mesh'), shading faceted;
subplot(2,2,2), surf(x,y,z), title('Surf'), shading faceted;
subplot(2,2,3), contour(x,y,z), title('Contour'), shading faceted;
subplot(2,2,4), pcolor(x,y,z), title('Pseudo colour'), shading faceted;
colormap cool;

savefig('Practice 02 Contour and pseudo color plots.fig');