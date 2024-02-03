x = linspace(-2*pi, 2*pi, 100);
y = linspace(-2*pi, 2*pi, 100);
[X, Y] = meshgrid(x, y);
Z = sin(X) .* cos(Y);
surf(X, Y, Z);
title('f(x, y) = sin(x) * cos(y)');
xlabel('x');
ylabel('y');
zlabel('f(x, y)');
