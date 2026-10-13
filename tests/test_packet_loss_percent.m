function tests = test_packet_loss_percent
tests = functiontests(localfunctions);
end

function testNoLoss(testCase)
verifyEqual(testCase, packet_loss_percent(10, 10), 0);
end

function testAllLost(testCase)
verifyEqual(testCase, packet_loss_percent(10, 0), 100);
end

function testZeroSent(testCase)
verifyEqual(testCase, packet_loss_percent(0, 0), 0);
end

function testInvalidCounts(testCase)
verifyError(testCase, @() packet_loss_percent(2, 3), 'MATLAB:expectedError');
end
