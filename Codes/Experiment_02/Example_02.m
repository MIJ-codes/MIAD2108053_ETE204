A = zeros(10, 10);
for m = 1:10
    for n = 1:10
        A(m, n) = sin(m)*cos(n);
    end
end

k = 1:10;
B = sin(k)'*cos(k);