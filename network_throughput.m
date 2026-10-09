bytesTransferred = 125e6;
durationSeconds = 10;
throughputMbps = (bytesTransferred * 8) / durationSeconds / 1e6;
fprintf('Throughput: %.2f Mbps\n', throughputMbps);
