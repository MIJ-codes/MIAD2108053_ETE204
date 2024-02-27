clear all;
close all;
clc;

% Declare symbolic variables
syms x y

% Define the equations
eqn1 = x^2 + 10*x*y + 4*y^2 == 15;
eqn2 = y == 2*x + 1;

% Solve the system of equations
sol = solve([eqn1, eqn2] , [x , y]);

% Convert symbolic solutions to double and round to 4 decimal places
xSol = round(double(sol.x), 4);
ySol = round(double(sol.y), 4);

% Display the solutions
disp('The solutions are:')
for i = 1:length(xSol)
    disp(['x(', num2str(i), ') = ', num2str(xSol(i))])
    disp(['y(', num2str(i), ') = ', num2str(ySol(i))])
end
