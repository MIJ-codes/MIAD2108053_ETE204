zclear all;
close all;
clc;

L1 = 3/2;
L2 = 1/2;
C = 4/3;

syms s E1 E2 I1 I2

ZL1 = s*L1;
ZL2 = s*L2;
ZC = 1/(s*C);

equation1 = E1 == ZL1*I1 + ZC*(I1 - I2);
equation2 = E2 == ZL2*I2 + ZC*(I2 - I1);

solution = solve([equation1, equation2], [E2, I1, I2]);


E1_s = 1/s;
E2_s = subs(solution.E2, E1, E1_s);

e2_t = ilaplace(E2_s);

disp('The step response of the network is:');
pretty(e2_t);