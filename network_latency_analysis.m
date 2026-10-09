% Simple network-latency sample analysis.
clear; clc;
latencyMs = [12 15 11 19 14 17 13 16];
fprintf('Samples: %d\n',numel(latencyMs));
fprintf('Mean latency: %.2f ms\n',mean(latencyMs));
fprintf('Median latency: %.2f ms\n',median(latencyMs));
fprintf('Minimum: %.2f ms\n',min(latencyMs));
fprintf('Maximum: %.2f ms\n',max(latencyMs));
fprintf('Std. deviation: %.2f ms\n',std(latencyMs));
figure; plot(latencyMs,'-o'); xlabel('Sample'); ylabel('Latency (ms)'); title('Network Latency Samples'); grid on;
