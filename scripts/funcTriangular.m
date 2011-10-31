%
%la ecuacion diferencial a integrar y resolver
%
function [ xdot ] = funcTriangular (t , x)
xdot = zeros(2, 1);

a = random('Uniform',0.019,0.021);% P(1);
b = 0.035;
a2=0;
b2=1;
c=2;
mu = triangularDistribution(random('Uniform',0,1) , a2, b2, c );
%lambda = triangularDistribution(random('Uniform',0,1) , a2, b2, c );
lambda = random('Normal',1.5,0.1);%P(4);

xdot(1) = lambda*x(1) - a * x(2)*x(1);
xdot(2) = b * x(2)*x(1) - mu * x(2);

end
