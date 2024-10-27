clear all;
close all;
clc;

% Sample input array
inputArray = [1 2 2 2 3 0 1 0 0 4];

% Using vectorized approach
resultVector_vec = neighbour_vectorized(inputArray);
disp(resultVector_vec);  % Output: [1 2 3 0 1 0 4]
