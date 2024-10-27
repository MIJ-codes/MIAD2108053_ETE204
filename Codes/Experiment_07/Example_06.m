clear all;
close all;
clc;

syms t w t0 x; % Define symbolic variables

% Perform Fourier transform of t^3
f1 = fourier(t^3, t, w);

% Perform Fourier transform of Heaviside function
f2 = fourier(heaviside(t - t0), t, w);

% Declare assumption for variable x
assume(x, 'real');

% Define the function f
f = exp(-x^2 * abs(t)) * sin(t) / t;

% Perform Fourier transform of f
f3 = fourier(f, t, w);

% Display the results
disp('Fourier transform of t^3:');
disp(f1);

disp('Fourier transform of Heaviside function:');
disp(f2);

disp('Fourier transform of the defined function f:');
disp(f3);
