function [ u ] = rnd_ss(seed, n)
	a = 25214903917;
	b = 11;
	m = 281474976710656;

	u = zeros(1, n);
	x = zeros(1, n);

	x(1) = seed;
	u(1) = seed / m;
	for i=1:n-1
		x(i + 1) = mod(a * x(i) + b, m);
		u(i + 1) = x(i + 1) / m; 
	end

end
