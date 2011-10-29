function [ x ] = normalDistribution( u, mean, deviation )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
    x = zeros(1, length(u));
    
    for i=1:2:length(u)
        u1 = u(i);
        u2 = u(i+1);
        partialSqrt = sqrt(-2 * log(u1));
        partialAngle = 2*pi*u2;
        x(i) = partialSqrt * sin(partialAngle);
        x(i+1) = partialSqrt * cos(partialAngle);
        x(i) = x(i)*deviation + mean;
        x(i+1) = x(i+1)*deviation + mean;
    end

end

