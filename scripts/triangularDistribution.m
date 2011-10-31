function [ x ] = triangularDistribution( u, a, b, c )
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