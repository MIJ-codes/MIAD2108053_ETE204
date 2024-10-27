clear all;
close all;
clc;

% Define symbolic variables
syms L C R I_source w;

% Function to calculate impedance of parallel LCR circuit
function Z_parallel(L, C, w)
  % Define a small tolerance to avoid division by zero
  tol = 1e-9;
  
  if w < tol
    % For very low frequencies, approximate capacitor impedance as open circuit (infinite)
    ZC = inf;
  else
    ZC = 1 / (j*w*C);
  end
  
  ZL = 1/(j*w*L);
  Z = ZL + ZC;
  return;
end

% Calculate impedance using the function
Z = Z_parallel(L, C, w);

% Admittance
Y = 1/Z;

% Source current
I_source = 10; % Adjust the value as needed

% Phasor voltage
V_ph = I_source * Y;

% Magnitude
V_mag = abs(V_ph);

% Substitute values
L = 20e-3; % 20 millihenrys
C = 1e-6; % 1 microfarad
R = 1e3; % 1 kilohm

% Frequency range
w_range = 0:100:20000; % Adjust the range as needed

% Evaluate symbolic expressions numerically
V_mag_values = double(subs(V_mag, {L, C, R, w}, {L, C, R, w_range}));

% Plot magnitude of the voltage
figure;
plot(w_range, V_mag_values);
xlabel('Frequency (rad/s)');
ylabel('Voltage Magnitude (V)');
title('Magnitude of Voltage vs. Frequency (Parallel LCR)');
grid on;

% Phase angle of the voltage (optional)
phase_angle = angle(V_ph);

% Evaluate phase angle numerically
phase_angle_values = double(subs(phase_angle, {L, C, R, w}, {L, C, R, w_range}));

% Plot phase angle of the voltage (optional)
figure;
plot(w_range, phase_angle_values);
xlabel('Frequency (rad/s)');
ylabel('Phase Angle (rad)');
title('Phase Angle of Voltage vs. Frequency (Parallel LCR)');
grid on;
