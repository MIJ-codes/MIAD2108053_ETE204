clc;
close all;
clear all;

%convolution without using conv function

x=input('Enter x: ');
h=input('Enter h: ');

m=length(x);
n=length(h);

X=[x,zeros(1,n)];
H=[h,zeros(1,m)];

for i=1:n+m-1
    Y(i)=0;
    for j=1:m
        if(i-j+1>0)
            Y(i)=Y(i)+X(j)*H(i-j+1);
        else
        end
    end
end

stem(Y);
ylabel('Y[n]');
xlabel('----->n');
title('Convolution of Two Signals without conv function');