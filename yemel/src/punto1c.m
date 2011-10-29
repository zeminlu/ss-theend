function ret = punto1c()


N = 10000;
 
x = ones(1,N);
for i = 1:N
    r = randomN(0,1);
    x(i) = r;
end

media = mean(x);

ret = media;

end
