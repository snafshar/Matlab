function [xmin, fmin, iterations] = golden_section_minimize(fun, a, b, tolerance, max_iterations)
%GOLDEN_SECTION_MINIMIZE Minimize a unimodal scalar function on [a,b].
    if nargin < 4, tolerance = 1e-8; end
    if nargin < 5, max_iterations = 200; end
    if ~(a < b) || tolerance <= 0 || max_iterations < 1
        error('golden_section_minimize:InvalidInput', 'Invalid interval or stopping rule.');
    end
    ratio = (sqrt(5) - 1) / 2;
    c = b - ratio * (b - a);
    d = a + ratio * (b - a);
    fc = fun(c);
    fd = fun(d);
    for iterations = 1:max_iterations
        if (b - a) <= tolerance
            break;
        end
        if fc <= fd
            b = d;
            d = c;
            fd = fc;
            c = b - ratio * (b - a);
            fc = fun(c);
        else
            a = c;
            c = d;
            fc = fd;
            d = a + ratio * (b - a);
            fd = fun(d);
        end
    end
    xmin = (a + b) / 2;
    fmin = fun(xmin);
end
