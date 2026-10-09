latencyMs = [12.1 12.8 11.9 13.4 12.3 12.0];
differences = abs(diff(latencyMs));
meanJitterMs = mean(differences);
fprintf('Mean absolute jitter: %.3f ms\n', meanJitterMs);
figure;
plot(1:numel(latencyMs), latencyMs, '-o');
xlabel('Sample'); ylabel('Latency (ms)'); title('Network latency samples'); grid on;
