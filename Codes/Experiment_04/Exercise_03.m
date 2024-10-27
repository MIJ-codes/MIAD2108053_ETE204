clear all;
close all;
clc;

% Define the given parameters
L = 20e-3;  % Inductance in H
C = 1e-6;   % Capacitance in F
R = 1e3;    % Resistance in Ohm
I = 10;     % Current in A

% Define the frequency range
w = sym('w');  % Frequency in rad/s and the values of w are taken from line 45

% Calculate the complex admittance
Y = 1/R + 1i*w*C + 1/(1i*w*L);

% Calculate the phasor voltage
V = I .* Y;

% Plot the magnitude of the voltage using ezplot
figure;
ezplot(abs(V), [100, 20000]);
title('Magnitude of Voltage vs Frequency');
xlabel('Frequency (rad/s)');
ylabel('Magnitude of Voltage (V)');
savefig('Exercise_03_Figure_01.fig');

% Decrease R and plot again
R = R / 2;  % Decrease R by half
Y = 1/R + 1i*w*C + 1/(1i*w*L);  % Recalculate the complex admittance
V = I .* Y;  % Recalculate the phasor voltage

figure;
ezplot(abs(V), [100, 20000]);
title('Magnitude of Voltage vs Frequency with Decreased R');
xlabel('Frequency (rad/s)');
ylabel('Magnitude of Voltage (V)');
savefig('Exercise_03_Figure_02.fig');

% Calculate the phase angle
phase_V = angle(V);  % Calculate phase using angle function

% Generate an array of frequency values
w_values = linspace(100, 20000, 1000);

% Substitute w_values into the voltage expression (V depends on w)
V_values = subs(V, w, w_values);

% Plot the phase of the voltage
figure;
plot(w_values, angle(V_values));
title('Phase of Voltage vs Frequency');
xlabel('Frequency (rad/s)');
ylabel('Phase of Voltage (rad)');
savefig('Exercise_03_Figure_03.fig');

