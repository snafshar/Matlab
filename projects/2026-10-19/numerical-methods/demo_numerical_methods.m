% Demonstrate the numerical methods in this folder.
clear;
clc;
format short g;

[root_bisect, iterations_bisect] = bisection(@(x) x^2 - 2, 1, 2);
[root_newton, iterations_newton, ok_newton] = newton_method(@(x) x^2 - 2, @(x) 2*x, 1.5);
[x_min, f_min, iterations_golden] = golden_section_minimize(@(x) (x - 2)^2 + 1, -5, 8);
[slope, intercept, fit_residual] = least_squares_line([0, 1, 2, 3], [1, 3, 5, 7.1]);
[eigenvalue, eigenvector, iterations_power] = power_iteration([2, 0; 0, 1]);

fprintf('Bisection root: %.10f (%d iterations)\n', root_bisect, iterations_bisect);
fprintf('Newton root:    %.10f (%d iterations, converged=%d)\n', root_newton, iterations_newton, ok_newton);
fprintf('Golden minimum: x=%.8f f=%.8f (%d iterations)\n', x_min, f_min, iterations_golden);
fprintf('Least squares:  slope=%.4f intercept=%.4f residual=%.3e\n', slope, intercept, fit_residual);
fprintf('Power iteration eigenvalue: %.8f (%d iterations), vector=[%.4f %.4f]\n', ...
        eigenvalue, iterations_power, eigenvector(1), eigenvector(2));
fprintf('Central difference derivative of x^2 at 3: %.8f\n', central_difference(@(x) x^2, 3));
