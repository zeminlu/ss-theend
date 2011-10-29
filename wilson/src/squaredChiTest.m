function [ squaredChi ] = squaredChiTest( nums, cantCells )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

    freq = hist(nums, cantCells);
    estimatedFreq = length(nums) / cantCells;
    
    squaredChi = 0;
    for i=1:cantCells
        squaredChi = squaredChi + ((freq(i) - estimatedFreq)^2) / estimatedFreq;
    end
end