function ret = testks()

	D_alpha = 0.2248; % TODO: Hay que saber cual es la tabla

	n = 50;
	x = ones(1,n);
	for i = 1:n
		x(i) = random;
	end
	x = sort(x);
	
	F = zeros(1,101);
	for i = 1:100
		j = 1;
		while(x(j) <= i/100 && j < length(x))
			j = j+1;
		end

		F(i+1) = j/n;
	end

	Dr = 0;
	Dl = 0;

	for i=1:length(x)
		xf = floor(x(i)*100)+1;
		Dr = max(Dr, F(xf)-x(i));
		Dl = max(Dl, x(i)-(F(xf)-(1/n)));
	end
	D = max(Dr,Dl);
	
	ret = ( D < D_alpha );
end
