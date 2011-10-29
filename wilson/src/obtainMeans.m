function [ means ] = obtainMeans( x, sizes )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here

    means = zeros(1, length(sizes));

    for i=1:length(sizes)
        means(i) = mean(x(1:sizes(i)));
    end

end

