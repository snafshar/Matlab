function loss = packet_loss_percent(sent, received)
%PACKET_LOSS_PERCENT Calculate packet loss as a percentage.
if sent < 0 || received < 0 || received > sent
    error('Require 0 <= received <= sent.');
end
if sent == 0
    loss = 0;
else
    loss = 100 * (sent - received) / sent;
end
end
