% Linear Systems Lab: solve Ax=b and inspect the residual.
clear;
clc;

A = [4, 1, -1; 2, 7, 1; 1, -3, 12];
expected = [2; -1; 3];
b = A * expected;

solution = A \ b;
residual = A * solution - b;
solution_error = solution - expected;

fprintf('Computed solution:\n');
disp(solution);

fprintf('Residual norm ||Ax-b||_2: %.3e\n', norm(residual, 2));
fprintf('Solution error norm:      %.3e\n', norm(solution_error, 2));

if norm(residual, 2) < 1e-10
    fprintf('Residual check passed.\n');
else
    fprintf('Residual check needs investigation.\n');
end
