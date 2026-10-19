# Numerical Methods Lab (MATLAB / GNU Octave)

A collection of small reusable functions that demonstrate root finding, one-dimensional minimization, least-squares fitting, numerical differentiation, and power iteration.

## Run

```matlab
demo_numerical_methods
test_numerical_methods
```

The tests use assertions and should run in both MATLAB and GNU Octave. CI installs Octave and runs the same regression script.

## Topics

- Bisection: a bracketed root finder for continuous functions.
- Newton's method: fast local convergence when the derivative is suitable.
- Golden-section search: interval reduction for one-dimensional minimization.
- Least-squares line fit: estimate slope and intercept from paired observations.
- Power iteration: estimate a dominant eigenpair.
- Central finite differences: approximate a derivative numerically.

These small implementations are teaching aids. Check assumptions and conditioning before using a numerical method on a real scientific problem.
