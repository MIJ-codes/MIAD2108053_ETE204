clear all;
close all;
clc;

x = [0 5 -3 7 1 8 10];
y = [1 5 3 0 0 8 -2];
logic = (x == y); %here the expression is evaluated for the correspnding elements then if the expression is true for the elements then a 1 is put on the new matrix and if it is false then a 0 is put in that place
elements = sum(logic);