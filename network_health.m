function status = network_health(latency_ms, packet_loss_percent)
%NETWORK_HEALTH Classify observed network quality.
%   Returns "healthy", "degraded", "poor", or "invalid".

    arguments
        latency_ms (1,1) double
        packet_loss_percent (1,1) double
    end

    if latency_ms < 0 || packet_loss_percent < 0 || packet_loss_percent > 100
        status = "invalid";
    elseif packet_loss_percent >= 10 || latency_ms >= 200
        status = "poor";
    elseif packet_loss_percent >= 2 || latency_ms >= 100
        status = "degraded";
    else
        status = "healthy";
    end
end
