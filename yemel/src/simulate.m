function [t,x,y] = simulate(a,b,mu,lambda,init)
% init = Vector de condiciones iniciales [x0, y0, t0, tend]
[t sim] = rk4("func", init(3), init(4), init, (init(4)-init(3))*100, [a, b, mu, lambda]);
x = sim(:,1);
y = sim(:,2);
endfunction
