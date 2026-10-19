# Linear Systems Lab (MATLAB / GNU Octave)

This lab solves a linear system (Ax=b) and reports residual and conditioning diagnostics. The solver is factored into a reusable function so it can be tested independently of the demo.

## Run the demo

In MATLAB or GNU Octave, change to this directory and run:

```matlab
linear_systems_demo
```

The demo uses `solve_linear_system(A,b)`, which returns the solution, residual norm, relative residual, and 2-norm condition number.

## Run regression tests

In MATLAB:

```matlab
test_linear_systems
```

In GNU Octave:

```bash
octave --no-gui --quiet --eval "test_linear_systems();"
```

The tests check the known solution, small residuals, condition-number output, and rejection of invalid matrix dimensions. GitHub Actions installs GNU Octave and runs both the tests and demo when these project files change.

## Interpretation

For solving a linear system, `A \\ b` is generally preferable to explicitly calculating `inv(A)*b`. A small residual measures how well the computed answer satisfies the supplied equations, but it does not by itself guarantee a small forward error; matrix conditioning also matters.

## Exercises

1. Perturb one element of (b) and measure the change in the solution.
2. Compare a well-conditioned matrix with a nearly singular one.
3. Add a test for a row-vector right-hand side and confirm it is accepted.
4. Add a test for a nonnumeric input and define a clear error message.
