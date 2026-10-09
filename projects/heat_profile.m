% One-dimensional heat diffusion using an explicit finite-difference update.
clear; clc;

n = 100;
steps = 200;
temperature = zeros(1, n);
temperature(1) = 100;

history = zeros(steps, n);
for step = 1:steps
    next = temperature;
    for i = 2:n-1
        next(i) = (temperature(i-1) + temperature(i+1)) / 2;
    end
    temperature = next;
    history(step, :) = temperature;
end

fprintf('Initial maximum temperature: %.2f\n', history(1,1));
fprintf('Final maximum temperature: %.2f\n', max(temperature));

figure;
plot(temperature);
xlabel('Position');
ylabel('Temperature');
title('Final Heat Profile');
grid on;

figure;
imagesc(history);
xlabel('Position');
ylabel('Time step');
title('Heat Diffusion Over Time');
colorbar;
