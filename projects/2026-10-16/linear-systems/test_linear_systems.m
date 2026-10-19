function test_linear_systems()
%TEST_LINEAR_SYSTEMS Regression tests for solve_linear_system.

    A = [4, 1, -1; 2, 7, 1; 1, -3, 12];
    expected = [2; -1; 3];
    b = A * expected;

    [solution, residual_norm, relative_residual, condition_number] = ...
        solve_linear_system(A, b);

    assert(norm(solution - expected, 2) < 1e-10, ...
           'The computed solution differs from the known answer.');
    assert(residual_norm < 1e-10, 'Residual norm should be small.');
    assert(relative_residual < 1e-10, 'Relative residual should be small.');
    assert(condition_number >= 1, 'Condition number should be at least one.');

    rejected = false;
    try
        solve_linear_system([1, 2; 3, 4], [1; 2; 3]);
    catch
        rejected = true;
    end
    assert(rejected, 'A mismatched right-hand side should be rejected.');

    rejected = false;
    try
        solve_linear_system([1, 2, 3; 4, 5, 6], [1; 2]);
    catch
        rejected = true;
    end
    assert(rejected, 'A non-square coefficient matrix should be rejected.');

    fprintf('Linear Systems Lab tests passed.\n');
end
