# Linear Algebra Diagnostics

For a computed solution x to Ax=b, inspect residual r=b-Ax. Compare its norm with the scale of A, x, and b, and consider conditioning. Use a direct solver for a small reference problem when possible; do not explicitly compute A inverse merely to solve a system.

For least squares, inspect residual structure and rank assumptions, not only the returned coefficients.