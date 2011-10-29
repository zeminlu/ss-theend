function xdot = func (t, x, P)
xdot = zeros(2, 1);

a = P(1);
b = P(2);
mu = P(3);
lambda = P(4);

xdot(1) = lambda*x(1) - a * x(2)*x(1);
xdot(2) = b * x(2)*x(1) - mu * x(2);

xdot = xdot';

end
