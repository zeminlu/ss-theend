function ans = chi2test
	size = 10000;
	rands = zeros(1,size);
	for i=1:size
		rands(i) = random;
	endfor
	
	hist(rands);
end



