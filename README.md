# MATLAB Projects

Numerical modelling, optimisation, visualisation, and network simulation.

## Projects

- `network_queue_simulation.m` — packet arrivals, service, queue occupancy, and loss
- `network_health.m` — classify network quality from latency and packet loss
- `projects/gradient_descent.m` — gradient-descent convergence
- `projects/heat_profile.m` — one-dimensional heat diffusion and time evolution
- [Linear Systems Lab](https://github.com/snafshar/Matlab/tree/main/projects/2026-10-16/linear-systems) — solve (Ax=b) and inspect residuals and conditioning
- [Numerical Methods Lab](https://github.com/snafshar/Matlab/tree/main/projects/2026-10-19/numerical-methods) — bisection, Newton iteration, golden-section minimization, least-squares, power iteration, and finite differences

## Run and test

```matlab
status = network_health(42, 0.5)
```

From the corresponding lab folder, run `demo_numerical_methods` and `test_numerical_methods` in MATLAB or GNU Octave. The scripts are designed for experimentation; inspect each method's assumptions before using it on real scientific data.
