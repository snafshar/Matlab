function [root, iterations] = bisection(fun, a, b, tolerance, max_iterations)
%BISECTION Find a root inside a sign-changing interval.
    if nargin < 4, tolerance = 1e-8; end
    if nargin < 5, max_iterations = 100; end
    if ~(a < b) || tolerance <= 0 || max_iterations < 1
        error('bisection:InvalidInput', 'Require a < b, positive tolerance and iterations.');
    end
    fa = fun(a);
    fb = fun(b);
    if fa == 0, root = a; iterations = 0; return; end
    if fb == 0, root = b; iterations = 0; return; end
    if sign(fa) == sign(fb)
        error('bisection:NoBracket', 'Function values at endpoints must have opposite signs.');
    end
    for iterations = 1:max_iterations
        root = (a + b) / 2;
        fm = fun(root);
        if abs(fm) <= tolerance || (b - a) / 2 <= tolerance
            return;
        end
        if sign(fa) ~= sign(fm)
            b = root;
            fb = fm; %#ok<NASGU>
        else
            a = root;
            fa = fm;
        end
    end
end
