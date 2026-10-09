bytes = [10 20 35 50 80] * 1e6;
seconds = [1 2 3 4 5];
throughputMbps = bytes .* 8 ./ seconds ./ 1e6;
plot(seconds, throughputMbps, '-o');
xlabel('Measurement interval (s)');
ylabel('Throughput (Mbps)');
title('Throughput measurements');
grid on;
