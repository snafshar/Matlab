# Linear Systems Lab (MATLAB)

This lab compares a direct linear-system solve with a residual-based accuracy check.

## Run

Open MATLAB in this folder and run:

```matlab
linear_systems_demo
```

The script solves (Ax=b) using MATLAB's backslash operator, computes the residual (r=Ax-b), and prints the residual norm. The example also compares the solution against a known vector.

## Questions

1. Why is `A \\ b` generally preferable to `inv(A)*b`?
2. What does a small residual tell you, and what does it not guarantee for an ill-conditioned matrix?
3. Change the matrix and observe how the residual and solution error change.
