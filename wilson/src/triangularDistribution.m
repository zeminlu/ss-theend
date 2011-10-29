function [ x ] = triangularDistribution( u, a, b, c )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
    x = zeros(1, length(u));
    
    limit = (b - a) / (c - a);
    
    for i=1:length(u)
        if u(i) <= limit
            x(i) = a + sqrt(u(i) * (c - a) * (b - a));
        else
            x(i) = c - sqrt((c - b)^2 - u(i) * (c - b) * (c - a) + (b - a) * (c - b));
        end
    end

end

