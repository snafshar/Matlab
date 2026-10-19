% Linear Systems Lab: solve Ax=b and inspect numerical diagnostics.
clear;
clc;
format short e;

A = [4, 1, -1; 2, 7, 1; 1, -3, 12];
expected = [2; -1; 3];
b = A * expected;

% Prefer the backslash operator to explicitly forming inv(A).
solution = A \ b;
residual = A * solution - b;
solution_error = solution - expected;

residual_norm = norm(residual, 2);
rhs_norm = norm(b, 2);
relative_residual = residual_norm / max(rhs_norm, eps);
solution_error_norm = norm(solution_error, 2);
condition_number = cond(A);

fprintf('Computed solution:\n');
disp(solution);

fprintf('Residual norm ||Ax-b||_2: %.3e\n', residual_norm);
fprintf('Relative residual:        %.3e\n', relative_residual);
fprintf('Solution error norm:      %.3e\n', solution_error_norm);
fprintf('2-norm condition number:  %.3e\n', condition_number);

if relative_residual < 1e-10
    fprintf('Relative residual check passed.\n');
else
    fprintf('Residual is larger than expected; inspect the matrix and data.\n');
end

fprintf(['Reminder: a small residual alone does not guarantee a small ' ...
         'forward error when A is ill-conditioned.\n']);
