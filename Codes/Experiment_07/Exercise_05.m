clear all;
close all;
clc;

syms t; % Define symbolic variable

% Define the symbolic Heaviside function
u = heaviside(t);

% Define the time vector
t_vec = -5:0.01:5;

% Define the signals
x1 = exp(5*t_vec) .* heaviside(-t_vec); % Exponentially damped signal 1
x2 = t_vec .* exp(-5*t_vec) .* heaviside(t_vec); % Exponentially damped signal 2

% Compute the Fourier transforms
X1 = fft(x1);
X2 = fft(x2);

% Frequency vector
Fs = 1;
f = (-length(X1)/2 : length(X1)/2 - 1) * (Fs / length(X1));

% Plot the signals and their Fourier transforms
subplot(2, 2, 1);
plot(t_vec, x1);
title('Signal x_1(t)');
xlabel('Time');
ylabel('Amplitude');

subplot(2, 2, 2);
plot(f, fftshift(abs(X1)));
title('Fourier Transform of x_1(t)');
xlabel('Frequency');
ylabel('|X_1(f)|');

subplot(2, 2, 3);
plot(t_vec, x2);
title('Signal x_2(t)');
xlabel('Time');
ylabel('Amplitude');

subplot(2, 2, 4);
plot(f, fftshift(abs(X2)));
title('Fourier Transform of x_2(t)');
xlabel('Frequency');
ylabel('|X_2(f)|');
