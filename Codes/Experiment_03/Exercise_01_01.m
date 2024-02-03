rows = 4;
cols = 3;
A = zeros(rows, cols);
for i = 1:rows
    for j = 1:cols
        A(i, j) = 4 + (i-1)*6 + (j-1)*4;
    end
end
disp('Matrix A:');
disp(A);




