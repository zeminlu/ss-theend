function [ resp ] = lanormal( x )
sigma = 0.1437;
media = 5.67;
resp = normpdf(x,media,sigma);
end

