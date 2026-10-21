function [x, derivative] = finite_difference(f, x0, h)
%FINITE_DIFFERENCE Estimate a derivative using a centered difference.
if h <= 0, error('Step size h must be positive.'); end
x = x0;
derivative = (f(x0 + h) - f(x0 - h)) / (2*h);
end