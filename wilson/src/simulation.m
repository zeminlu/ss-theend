cantNums = 10000;
cantCells = 10;
seed1 = 3543;
seed2 = 2349;

u = lecuyer(seed1, seed2, cantNums);

hist(u, cantCells);

plot(u(1:cantNums-1), u(2:cantNums), 'k.');

plot3(u(1:cantNums-2), u(2:cantNums-1), u(3:cantNums), 'k.');

xlabel('U_i');
ylabel('U_{i+1}');
zlabel('U_{i+2}');

squaredChi = squaredChiTest(u, cantCells);

D = ksTest(u, cantCells);

x = triangularDistribution(u, 0, 1, 3);

hist(x, cantCells);