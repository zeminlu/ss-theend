% TODO: Hacer que le pudas pedir filas y columnas
function num = randomN (mu, sigma)
	
	% TODO: Futuro: si no recibo mu y sigma, asumo mu = 0 y sigma = 1

	u1 = random;
	u2 = random;
	% Algoritmo de Box-Muller
	z0 = sqrt(-2*log (u1)) * cos (2 * pi * u2);
	num = (z0 * sigma) +  mu ;
	
end



