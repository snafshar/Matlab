# Numerical Methods: Assumptions and Pitfalls

- **Bisection** requires a continuous function and an interval whose endpoint values have opposite signs, unless an endpoint is already a root.
- **Newton iteration** can converge quickly near a suitable root but depends on the derivative and starting point.
- **Golden-section minimization** assumes a unimodal objective over the selected interval.
- **Least-squares fitting** minimizes the 2-norm of the residual; ill-conditioned design matrices can make parameter estimates sensitive.
- **Power iteration** is most useful when the desired dominant eigenvalue is separated in magnitude from the rest of the spectrum and the initial vector has a component along its eigenvector.
- **Finite differences** trade truncation error against round-off error; a smaller step is not always better.

For production work, consider scaling, conditioning, stopping criteria, and failure reporting instead of relying on a fixed iteration limit alone.
