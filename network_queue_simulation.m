% Network packet queue simulation
clear; clc;

packets = 5000;
arrivalRate = 0.75;
serviceRate = 0.90;
maxQueue = 100;

queue = 0;
queueHistory = zeros(1, packets);
delay = zeros(1, packets);
dropped = 0;

for k = 1:packets
    if rand < arrivalRate
        if queue < maxQueue
            queue = queue + 1;
        else
            dropped = dropped + 1;
        end
    end

    if queue > 0 && rand < serviceRate
        queue = queue - 1;
        delay(k) = queue + 1;
    end

    queueHistory(k) = queue;
end

fprintf('Packets: %d\n', packets);
fprintf('Dropped: %d\n', dropped);
fprintf('Loss rate: %.2f%%\n', 100 * dropped / packets);
fprintf('Maximum queue: %d\n', max(queueHistory));

figure;
plot(queueHistory);
xlabel('Time step');
ylabel('Queue length');
title('Network Queue Occupancy');
grid on;
