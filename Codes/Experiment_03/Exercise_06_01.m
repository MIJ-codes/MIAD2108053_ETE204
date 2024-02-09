clear all;
close all;
clc;

connection_type = input('Enter the type of connection (series or parallel): ', 's');

n = input('Enter the number of resistors: ');

resistors = zeros(1, n);

for i = 1:n
    resistors(i) = input(['Enter the resistance of resistor ', num2str(i), ': ']);
end

if strcmpi(connection_type, 'series')
    equivalent_resistance = sum(resistors);
elseif strcmpi(connection_type, 'parallel')
    equivalent_resistance = 1 / sum(1 ./ resistors);
else
    error('Invalid connection type. Please enter either "series" or "parallel".');
end

fprintf('Equivalent resistance is: %.2f\n', equivalent_resistance);
