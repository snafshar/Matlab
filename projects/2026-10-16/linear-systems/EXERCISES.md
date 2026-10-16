# Exercises: Linear Systems

1. Replace the example matrix with another nonsingular (3\times3) matrix.
2. Compare the residual norm and the solution error norm.
3. Try a nearly singular matrix and explain why the solution can be sensitive to small changes in (b).
4. Compare `A \\ b` with `inv(A)*b` for a well-conditioned matrix. Explain the numerical and computational differences.
5. Turn the script into a function that accepts (A) and (b), and returns the solution and residual norm.

Always distinguish a small residual from a guarantee that the computed solution is accurate; conditioning matters.
