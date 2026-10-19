function derivative_estimate = central_difference(fun, x, step)
%CENTRAL_DIFFERENCE Approximate a scalar derivative using a symmetric stencil.
    if nargin < 3, step = 1e-5; end
    if ~isscalar(x) || ~isscalar(step) || step <= 0
        error('central_difference:InvalidInput', 'x must be scalar and step must be positive.');
    end
    derivative_estimate = (fun(x + step) - fun(x - step)) / (2 * step);
end
