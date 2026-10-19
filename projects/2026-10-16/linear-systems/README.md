# Linear Systems Lab (MATLAB)

This lab solves a small system (Ax=b) and compares residual, relative residual, solution error, and matrix conditioning.

## Run

Open MATLAB in this folder and run:

```matlab
linear_systems_demo
```

The script uses MATLAB's backslash operator, computes (r=Ax-b), and prints:

- the computed solution;
- the residual norm (|Ax-b|_2);
- the relative residual;
- the error against a known solution;
- the matrix 2-norm condition number.

## Why use backslash?

For solving a linear system, `A \\ b` is generally preferable to explicitly calculating `inv(A)*b`. It lets MATLAB select a suitable numerical method without forming the inverse.

## Questions

1. Why can the residual be small while the solution error is comparatively large?
2. Increase the condition number of (A) and observe the diagnostics.
3. Perturb one element of (b) slightly. How much does the solution change?
4. Modify the example so that (b) is supplied independently rather than built from a known solution.

A small residual measures how well the computed solution satisfies the supplied equations. It does not, by itself, guarantee a small forward error; conditioning also matters.
