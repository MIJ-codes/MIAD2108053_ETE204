clear all;
close all;
clc;

syms f(x) g(x);
Df = diff(f);
Dg = diff(g);

differential_equation1 = Df + 1.5 * f + 2 * g == 0;
differential_equation2 = Dg + f - 2 * g == 0;

solution = dsolve ([differential_equation1 , differential_equation2]);

solution_f = subs(solution.f, x, 0) == 0;
solution_g = subs(solution.g, x, 0) == 2;

constants = solve([solution_f, solution_g]);

solution_f = subs(solution.f, constants);
solution_g = subs(solution.g, constants);

disp('Solution for f(x):')
disp(vpa(simplify(solution_f), 3))
disp('Solution for g(x):')
disp(vpa(simplify(solution_g), 3))