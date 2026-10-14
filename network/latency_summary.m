function stats = latency_summary(samplesMs)
%LATENCY_SUMMARY Return common descriptive statistics for latency samples.
if isempty(samplesMs) || any(samplesMs(:) < 0) || any(~isfinite(samplesMs(:)))
    error('Provide finite, non-negative latency samples.');
end
stats.count = numel(samplesMs);
stats.minMs = min(samplesMs(:));
stats.medianMs = median(samplesMs(:));
stats.meanMs = mean(samplesMs(:));
stats.maxMs = max(samplesMs(:));
end
