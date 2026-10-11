function value = latency_percentile(samples, p)
%LATENCY_PERCENTILE Interpolated percentile of latency samples.
if isempty(samples) || p < 0 || p > 100
    error('Samples must be non-empty and p must be between 0 and 100.');
end
values = sort(samples(:));
position = 1 + (numel(values) - 1) * p / 100;
lower = floor(position);
upper = ceil(position);
if lower == upper
    value = values(lower);
else
    fraction = position - lower;
    value = values(lower) + fraction * (values(upper) - values(lower));
end
end
