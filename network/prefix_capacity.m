function [total, usable] = prefix_capacity(prefix)
%PREFIX_CAPACITY Return IPv4 address and host capacity for a CIDR prefix.
if prefix < 0 || prefix > 32 || fix(prefix) ~= prefix
    error('Prefix must be an integer from 0 to 32.');
end

total = 2^(32 - prefix);
if prefix <= 30
    usable = total - 2;
else
    usable = total;
end
end
