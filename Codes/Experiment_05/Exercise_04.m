% Number of random points
n = 10000;

% Generate random points within the unit square
points = rand(n, 2);

% Distance from the origin
distance = sqrt(points(:, 1).^2 + points(:, 2).^2);

% Points inside the circle
inside_circle = distance <= 1;

% Estimate pi
pi_estimate = 4 * sum(inside_circle) / n;

fprintf('Estimated value of pi: %f\n', pi_estimate);
