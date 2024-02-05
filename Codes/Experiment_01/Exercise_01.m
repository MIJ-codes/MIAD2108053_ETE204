clear all;
close all;
clc;

%What are the values of 8/2 and 8\2
a = 8 / 2;
b = 8 \ 2;

%Find the magnitude and the phase in radians of 3+j6
c = 3 + 6 * j;
m = abs (c);
an1 = angle (c);

%What are the real and imaginary parts of 5<1.2, where the angle s in
%radians??
d = 5 * exp(j * 1.2);
im = imag(d);
an2 = angle(d);