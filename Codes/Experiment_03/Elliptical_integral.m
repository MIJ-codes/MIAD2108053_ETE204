function result = Elliptical_integral(k2_values)

    is_scalar = isscalar(k2_values);

    % Initialize variables
    a = 1;
    b = sqrt(1 - k2_values);
    g = 1;
    eps_value = eps;

    while abs(a - b) > eps_value .* abs(g)

        g = 2 .* sqrt(a .* b);

        a = (a + b) / 2;
        b = sqrt(real(a .* b));

        eps_value = eps .* abs(g);
    end

    if is_scalar
        result = g .* pi / 2;
    else
        result = g .* pi / 2 .* ones(size(k2_values));
    end
end


