% Gradient descent for f(x) = x^2.
clear; clc;

point = 3;
rate = 0.1;
iterations = 30;
trace = zeros(1, iterations);

for k = 1:iterations
    trace(k) = point;
    gradient = 2 * point;
    point = point - rate * gradient;
end

fprintf('Initial point: %.4f\n', trace(1));
fprintf('Final point: %.6f\n', point);
fprintf('Final objective: %.6f\n', point^2);

figure;
plot(0:iterations-1, trace, '-o');
xlabel('Iteration');
ylabel('x');
title('Gradient Descent Convergence');
grid on;
