function coefficients = Legendre_Coefficients(n)
    coefficients = zeros(1, n + 1);
    coefficients(end) = 1;

    for k = 1:n
        temp = zeros(1, n + 1);
        temp(end) = -coefficients(end);

        temp(1:n - k) = ((2 * k - 1) / k) * coefficients(1:n - k) - ((k - 1) / k) * coefficients(2:n - k + 1);

        coefficients = temp;
    end
end


