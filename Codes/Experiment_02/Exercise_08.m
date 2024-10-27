clear all;
close all;
clc;

cell_array = {[1 2 3 4], [6 8; 2 4], [1; 3; 5]};

% Access the first row vector (numbers 1, 2, 3, 4)
first_row_vector = cell_array{1}

% Access the element at row 2, column 1 of the matrix (number 6)
matrix_element = cell_array{2}(2, 1)

% Access the second element in the third column vector (number 3)
second_element = cell_array{3}(2)
