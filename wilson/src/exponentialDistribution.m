function [ x ] = exponentialDistribution( u, lambda )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
    x = zeros(1, length(u));
    
    for i=1:length(u)
        x(i) = -1 / lambda * log(abs(1 - u(i)));
    end

end

