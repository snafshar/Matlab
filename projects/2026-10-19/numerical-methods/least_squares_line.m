function [slope, intercept, residual_norm] = least_squares_line(x, y)
%LEAST_SQUARES_LINE Fit y approximately as slope*x + intercept.
    if ~isnumeric(x) || ~isnumeric(y) || ~isvector(x) || ~isvector(y) || numel(x) ~= numel(y) || numel(x) < 2
        error('least_squares_line:InvalidInput', 'x and y must be equal-length numeric vectors with at least two points.');
    end
    x = x(:);
    y = y(:);
    if any(~isfinite(x)) || any(~isfinite(y))
        error('least_squares_line:NonFiniteInput', 'Inputs must be finite.');
    end
    design = [x, ones(size(x))];
    coefficients = design \ y;
    slope = coefficients(1);
    intercept = coefficients(2);
    residual_norm = norm(design * coefficients - y, 2);
end
