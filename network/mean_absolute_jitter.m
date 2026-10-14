function jitterMs = mean_absolute_jitter(samplesMs)
%MEAN_ABSOLUTE_JITTER Mean absolute difference between adjacent samples.
if numel(samplesMs) < 2 || any(samplesMs(:) < 0) || any(~isfinite(samplesMs(:)))
    error('Provide at least two finite, non-negative samples.');
end
values = samplesMs(:);
jitterMs = mean(abs(diff(values)));
end
