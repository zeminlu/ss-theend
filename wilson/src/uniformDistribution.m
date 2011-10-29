function [ x ] = uniformDistribution( u, a, b )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
    x = zeros(1, length(u));
    
    for i=1:length(u)
        x(i) = (b - a) * u(i) + a;
    end

end

