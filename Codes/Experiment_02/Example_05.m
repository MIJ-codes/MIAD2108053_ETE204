t = -10*pi:pi/100:10*pi;
x = t.*cos(t);
y = t.*sin(t);
plot3(x,y,t);
title('Curve u(t) = < t*cos(t), t*sin(t), t >')
xlabel('x')
ylabel('y')
zlabel('t')
grid
savefig('Example_05_Figure_01.fig')