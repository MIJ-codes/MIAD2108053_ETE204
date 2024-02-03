function res = sumcubes1(x, y)
%
if nargin ~= 2
error('Need two inputs');
end
if ~all(size(x)==size(y))
error('Inputs must be the same size');
end
res = x.^3 + y.^3;
