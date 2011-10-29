sims = 400;
seeds = [154, 226, 63, 344, 8952, 906, 297, 34978, 239, 90, 240, 89];
tStudent95 = 1.65;

%propulsor1. 72 hs = 3 dias
x1 = exponentialDistribution(lecuyer(seeds(1), seeds(2), sims*sims), 1/72);

%propulsor2. 72 hs = 3 dias
x2 = exponentialDistribution(lecuyer(seeds(3), seeds(4), sims*sims), 1/72);

%nucleo WARP. 60, 72, 84hs = 72 +- 12 hs.
x3 = triangularDistribution(lecuyer(seeds(5), seeds(6), sims*sims), 60, 72, 84);

%dilitio ppal
x4 = uniformDistribution(lecuyer(seeds(7), seeds(8), sims*sims), 20, 50);

%dilitio reduntante
x5 = uniformDistribution(lecuyer(seeds(9), seeds(10), sims*sims), 5, 30);

%SBTF
x6 = normalDistribution(lecuyer(seeds(11), seeds(12), sims*sims), 48, 5);

%simulacion montecarlo. porque solo asi da bien?
T = zeros(1, sims);
meanAcum = zeros(1, sims);
stdAcum = zeros(1, sims);

count = 1;

for i=1:sims
    est = 0;
    for j=count:count+i-1
        est = est + min([max(x1(j), x2(j)), x3(j), max(x4(j), x5(j)), x6(j)]);
    end
    T(i) = est / i;
    meanAcum(i) = mean(T(1:i));
    stdAcum(i) = std(T(1:i));
    count = count + i;
    if i > 1 && (2 * tStudent95 * stdAcum(i) / (meanAcum(i) * sqrt(i)) ) < 0.025
        break;
    end
end

meanT = meanAcum(i);
stdT = stdAcum(i);
meanAcum = meanAcum(1:i);
stdAcum = stdAcum(1:i);

interval = tStudent95 * stdT / sqrt(i);

plot(1:i, meanAcum)
%plot(1:i, stdAcum)