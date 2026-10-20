# Conditioning and Numerical Stability

Conditioning describes sensitivity of the mathematical answer to input changes; stability describes an algorithm's behavior under rounding and perturbations.

For `Ax=b`, a large condition number can amplify relative input errors. A small residual alone does not guarantee small solution error when the system is ill-conditioned. Report residuals, scaling, and condition estimates together.