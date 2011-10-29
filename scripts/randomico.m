randoms = [];
% crea 1000000 randoms con dist normal
for j=1:100000  
    rand = random('Normal',5.67,0.0753);% + i * random('Uniform',0,2);
    randoms = [randoms ; rand];
end