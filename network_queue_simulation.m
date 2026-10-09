% Network packet queue simulation with reproducible parameters.
clear; clc; rng(42);
packets=5000; arrivalRate=0.75; serviceRate=0.90; maxQueue=100;
queue=0; queueHistory=zeros(1,packets); delay=zeros(1,packets); dropped=0; served=0;
for k=1:packets
    if rand<arrivalRate
        if queue<maxQueue, queue=queue+1; else, dropped=dropped+1; end
    end
    if queue>0 && rand<serviceRate
        queue=queue-1; served=served+1; delay(k)=queue+1;
    end
    queueHistory(k)=queue;
end
lossRate=100*dropped/packets; validDelay=delay(delay>0);
fprintf('Packets: %d\nServed: %d\nDropped: %d\nLoss rate: %.2f%%\nMaximum queue: %d\n',packets,served,dropped,lossRate,max(queueHistory));
if ~isempty(validDelay), fprintf('Average observed delay: %.2f time units\n',mean(validDelay)); end
figure; plot(queueHistory); xlabel('Time step'); ylabel('Queue length'); title('Network Queue Occupancy'); grid on;
