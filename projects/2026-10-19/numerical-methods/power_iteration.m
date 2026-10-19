function [eigenvalue, eigenvector, iterations] = power_iteration(A, max_iterations, tolerance)
%POWER_ITERATION Estimate an eigenpair for a matrix's dominant eigenvalue.
    if nargin < 2, max_iterations = 500; end
    if nargin < 3, tolerance = 1e-10; end
    if ~isnumeric(A) || ~ismatrix(A) || size(A,1) ~= size(A,2) || isempty(A)
        error('power_iteration:InvalidMatrix', 'A must be a non-empty square matrix.');
    end
    if max_iterations < 1 || tolerance <= 0
        error('power_iteration:InvalidInput', 'Iteration limit and tolerance must be positive.');
    end
    n = size(A, 1);
    eigenvector = ones(n, 1) / sqrt(n);
    previous_value = NaN;
    for iterations = 1:max_iterations
        next_vector = A * eigenvector;
        magnitude = norm(next_vector, 2);
        if magnitude <= eps
            error('power_iteration:ZeroProduct', 'Iteration reached a zero vector.');
        end
        eigenvector = next_vector / magnitude;
        eigenvalue = eigenvector' * A * eigenvector;
        if isfinite(previous_value) && abs(eigenvalue - previous_value) <= tolerance
            return;
        end
        previous_value = eigenvalue;
    end
end
