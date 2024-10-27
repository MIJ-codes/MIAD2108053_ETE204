function series_LCR_analysis()
    % Clear previous data and commands
    clear all;
    close all;
    clc;

    % Define the given parameters
    L = 1;  % Inductance in H
    C = 1;  % Capacitance in F
    V0 = 1; % Initial Voltage in V

    % Define symbolic variables
    syms R zeta s t k1 k2

    % Calculate the value of R in terms of ζ
    R = 2 * zeta * sqrt(L / C);

    % Display R for different values of zeta
    zeta_values = [0.5, 1, 1.5];
    for zeta_val = zeta_values
        R_val = subs(R, zeta, zeta_val);
        disp(['For zeta = ', num2str(zeta_val), ', R = ', num2str(double(R_val))]);
    end

    % Set up the characteristic equation
    eqn = L * s^2 + R * s + 1/C == 0;

    % Solve the characteristic equation for s
    s_solutions = solve(eqn, s);

    % Display the solutions for different values of zeta
    for zeta_val = zeta_values
        s_vals = subs(s_solutions, zeta, zeta_val);
        disp(['For zeta = ', num2str(zeta_val), ', s values are: ', num2str(double(s_vals(1))), ' and ', num2str(double(s_vals(2)))]);
    end

    % Define the general solution for Vc(t)
    s1 = s_solutions(1);
    s2 = s_solutions(2);
    Vc(t) = k1 * exp(s1 * t) + k2 * exp(s2 * t);

    % Initial conditions
    I0 = 0; % Initial current is 0
    Vc0 = V0; % Initial voltage is V0

    % Apply initial conditions
    eq1 = subs(Vc(0), t, 0) == Vc0;
    eq2 = subs(diff(Vc(t), t), t, 0) == I0 / C;

    % Solve for k1 and k2
    constants = solve([eq1, eq2], [k1, k2]);
    k1_val = constants.k1;
    k2_val = constants.k2;

    % Substitute k1 and k2 back into the solution
    Vc(t) = subs(Vc(t), [k1, k2], [k1_val, k2_val]);
    Vc(t) = simplify(Vc(t));

    % Test the script for some zeta and t values
    zeta_test = 0.5;
    t_test = linspace(0, 15, 100);
    Vc_test = double(subs(Vc, {zeta, t}, {zeta_test, t_test}));

    % Plot the result for a specific zeta value
    figure;
    plot(t_test, Vc_test);
    title(['Capacitor Voltage for \zeta = ', num2str(zeta_test)]);
    xlabel('Time (s)');
    ylabel('Voltage (V)');
    savefig('Voltage_vs_Time_for_zeta_0_5.fig');

    % Define the time and zeta ranges
    t_array = linspace(0, 15, 100);
    zeta_array = linspace(0.01, 1.5, 100);

    % Generate meshgrid
    [T, Z] = meshgrid(t_array, zeta_array);

    % Calculate the capacitor voltage for each pair of t and zeta values
    Vc_matrix = capacitor_voltage(T, Z, Vc);

    % Plot the voltage using mesh
    figure;
    mesh(T, Z, Vc_matrix);
    title('Capacitor Voltage over Time and Damping Ratio');
    xlabel('Time (s)');
    ylabel('Damping Ratio (\zeta)');
    zlabel('Voltage (V)');
    savefig('Voltage_Mesh_Plot.fig');

    % Investigate overshoot
    % Overshoot is defined as the percentage by which the signal exceeds its final value
    Vc_zeta_zero = capacitor_voltage(t_array, 0.01, Vc);
    overshoot = max(Vc_zeta_zero) - V0;

    % Investigate rise time
    % Rise time is the time it takes for the response to rise from 10% to 90% of its final value
    Vc_critical = capacitor_voltage(t_array, 1, Vc);
    rise_time_10 = t_array(find(Vc_critical >= 0.1 * V0, 1));
    rise_time_90 = t_array(find(Vc_critical >= 0.9 * V0, 1));
    rise_time = rise_time_90 - rise_time_10;

    % Display results
    disp(['Overshoot for zeta approaching zero: ', num2str(overshoot)]);
    disp(['Rise time for critically damped system: ', num2str(rise_time)]);
end

function Vc_matrix = capacitor_voltage(t_array, zeta_value, Vc)
    % Initialize the output array
    Vc_matrix = zeros(length(zeta_value), length(t_array));

    % Nested for loops to calculate the output array
    for i = 1:length(zeta_value)
        for j = 1:length(t_array)
            Vc_matrix(i, j) = double(subs(Vc, {sym('zeta'), sym('t')}, {zeta_value(i), t_array(j)}));
        end
    end
end
