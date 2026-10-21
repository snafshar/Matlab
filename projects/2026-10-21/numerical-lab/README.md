# Numerical Methods Lab

Runnable MATLAB/Octave examples for root finding, derivative estimation, and linear-system diagnostics.

## Suggested checks

- Bisection requires a continuous function on the interval and a sign change at the endpoints.
- Compare finite differences for several step sizes; very small steps can amplify floating-point error.
- Inspect residuals and condition estimates before trusting a computed linear-system solution.
- Record software version, inputs, tolerance, and iteration cap when sharing results.