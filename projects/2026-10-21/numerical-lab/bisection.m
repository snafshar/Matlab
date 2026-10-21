function [root, iterations] = bisection(f, a, b, tol, maxIter)
%BISECTION Find a root when f(a) and f(b) have opposite signs.
% Inputs: function handle f, interval [a,b], positive tolerance, iteration cap.
if tol <= 0 || maxIter < 1 || a >= b
    error('Require tol > 0, maxIter >= 1, and a < b.');
end
fa = f(a); fb = f(b);
if fa == 0, root = a; iterations = 0; return; end
if fb == 0, root = b; iterations = 0; return; end
if sign(fa) == sign(fb)
    error('The endpoint values must have opposite signs.');
end
for iterations = 1:maxIter
    mid = a + (b-a)/2;
    fm = f(mid);
    if abs(fm) <= tol || (b-a)/2 <= tol
        root = mid; return;
    end
    if sign(fm) == sign(fa)
        a = mid; fa = fm;
    else
        b = mid; fb = fm;
    end
end
root = a + (b-a)/2;
warning('Bisection:MaxIterations', 'Maximum iterations reached.');
end