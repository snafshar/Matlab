function test_numerical_methods()
%TEST_NUMERICAL_METHODS Basic portable regression tests.
    [root, ~] = bisection(@(x) x^2 - 2, 1, 2, 1e-9, 200);
    assert(abs(root - sqrt(2)) < 1e-7);

    [root, ~, converged] = newton_method(@(x) x^2 - 2, @(x) 2*x, 1.5, 1e-10, 50);
    assert(converged && abs(root - sqrt(2)) < 1e-8);

    [xmin, fmin] = golden_section_minimize(@(x) (x - 2)^2 + 1, -5, 8, 1e-7, 300);
    assert(abs(xmin - 2) < 1e-5 && abs(fmin - 1) < 1e-8);

    [slope, intercept, residual] = least_squares_line([0, 1, 2, 3], [1, 3, 5, 7]);
    assert(abs(slope - 2) < 1e-10 && abs(intercept - 1) < 1e-10 && residual < 1e-10);

    [eigenvalue, vector] = power_iteration([2, 0; 0, 1], 500, 1e-10);
    assert(abs(eigenvalue - 2) < 1e-6 && abs(abs(vector(1)) - 1) < 1e-4);

    assert(abs(central_difference(@(x) x^2, 3, 1e-5) - 6) < 1e-7);
    fprintf('Numerical Methods tests passed.\n');
end
