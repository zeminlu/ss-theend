function [ u ] = lecuyer( seed1, seed2, n )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

m1 = 2147483563;
m2 = 2147483399;

u = zeros(1, n);

x1 = seed1;
x2 = seed2;

for i=1:n
    x1 = mod(40014 * x1, m1);
    x2 = mod(40692 * x2, m2);
    
    x = mod(x1 - x2, m1 - 1);
    if x > 0
        u(i) = x / m1;
    else
        u(i) = (m1 - 1) / m1;
    end
end

end