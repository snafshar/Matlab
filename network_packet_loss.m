sent = 1000;
received = 973;
lost = sent - received;
lossRate = 100 * lost / sent;
fprintf('Sent: %d\nReceived: %d\nLost: %d\nLoss rate: %.2f%%\n', ...
    sent, received, lost, lossRate);
