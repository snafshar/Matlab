function report = linear_system_diagnostics(A, b)
%LINEAR_SYSTEM_DIAGNOSTICS Summarize conditioning and residual of A*x=b.
if size(A,1) ~= size(A,2) || size(A,1) ~= numel(b)
    error('A must be square and compatible with b.');
end
if rcond(A) < eps
    warning('Matrix may be singular or severely ill-conditioned.');
end
x = A \ b;
r = A*x - b;
report.solution = x;
report.residual_norm = norm(r, 2);
report.relative_residual = norm(r,2) / max(norm(b,2), eps);
report.condition_estimate = cond(A);
end