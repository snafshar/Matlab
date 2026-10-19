function [solution, residual_norm, relative_residual, condition_number] = solve_linear_system(A, b)
%SOLVE_LINEAR_SYSTEM Solve Ax=b and return basic numerical diagnostics.
%   Validates dimensions, solves using MATLAB/Octave backslash, and returns
%   residual norm, relative residual, and the 2-norm condition number.

    if ~isnumeric(A) || ~ismatrix(A) || isempty(A) || size(A, 1) ~= size(A, 2)
        error('solve_linear_system:InvalidMatrix', ...
              'A must be a non-empty numeric square matrix.');
    end

    if ~isnumeric(b) || ~isvector(b) || numel(b) ~= size(A, 1)
        error('solve_linear_system:InvalidRightHandSide', ...
              'b must be a numeric vector with one element per row of A.');
    end

    b = b(:);
    solution = A \ b;
    residual = A * solution - b;

    residual_norm = norm(residual, 2);
    relative_residual = residual_norm / max(norm(b, 2), eps);
    condition_number = cond(A);
end
