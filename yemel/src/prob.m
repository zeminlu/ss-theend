function p = prob ( periods, limit )
	
	count = 0;
	total = length(periods);
	for i=1:total
		if ( periods(i) < limit )
			count++;
		endif
	endfor
	
	p = count / total;
end
