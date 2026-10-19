function [root, iterations, converged] = newton_method(fun, derivative, initial, tolerance, max_iterations)
%NEWTON_METHOD Solve fun(x)=0 with Newton iteration.
    if nargin < 4, tolerance = 1e-8; end
    if nargin < 5, max_iterations = 50; end
    if tolerance <= 0 || max_iterations < 1
        error('newton_method:InvalidInput', 'Tolerance and iteration limit must be positive.');
    end
    root = initial;
    converged = false;
    for iterations = 0:max_iterations
        value = fun(root);
        if abs(value) <= tolerance
            converged = true;
            return;
        end
        slope = derivative(root);
        if ~isfinite(slope) || abs(slope) <= eps
            error('newton_method:SmallDerivative', 'Derivative is zero or numerically too small.');
        end
        if iterations == max_iterations
            break;
        end
        next_root = root - value / slope;
        if ~isfinite(next_root)
            error('newton_method:NonFiniteIterate', 'Iteration produced a non-finite value.');
        end
        root = next_root;
    end
end
