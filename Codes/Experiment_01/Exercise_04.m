clear;
clc;
%A 6 by 8 matrix in which top, bottom, left, right is 0 and all the other
%elements are 5
A = zeros(6,8);
A((2:5),(2:7)) = 5;

%Array of SID then reverse the order using matlab function and not using
%matlab function
B = [2 1 0 8 0 5 3];
InverseB1 = fliplr (B);
InverseB2 = B(7:-1:1);

%10 by 10 Magic matrix C and sum of their rows, columns and diagonal elements 
C = magic(10);
sumc = sum(C); %to sum every element of each columns and make a row
sumr = sum(C,2); %to sum every element of each rows and make a column
diagonal = diag(C); %to get the diagonal elements and make a column
sumd = sum(diagonal); %to sum the column containing the diagonal elements

%A table which 1st column has 1 to 10 2nd column has root of the numbers
%3rd column has square of the numbers
int = [1:10]';
introot = sqrt(int);
intsqr = int .* int;
D = table(int, introot, intsqr);
