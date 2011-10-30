function [ d ] = ksTest( nums, cantCells )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

    aux = hist(nums, cantCells);
    aux = sort(aux/length(nums));
    
    x = zeros(1, cantCells);
    for i=1:cantCells
       x(i) = sum(aux(1:i));
    end
    
    dPlusArray = zeros(1, cantCells);
    dMinusArray = zeros(1, cantCells);
    
    for i=1:cantCells
        dPlusArray(i) = i/cantCells - x(i);
    end
    
    for i=1:cantCells
        dMinusArray(i) = x(i) - (i - 1)/cantCells;
    end
    
    d = max(max(dPlusArray), max(dMinusArray));
end