% Octave - Simulación de Sistemas

%function p = period(x,t)
%	delta = t(2) - t(1);
%	segment = floor(6 / delta);
%	[max1, index1] = max(x(1:segment));
%	[max2, index2] = max(x(floor(segment*0.5):floor(segment*1.5)));
%	p = abs(t(index1) - t(index2+segment));
%endfunction


function p = period(x,t)
	xm = x - mean(x);
	changes = [];
	for i = 1:(length(xm)-1)
		signo = sign(xm(i))*sign(xm(i+1));
		if(signo <= 0)
			changes = [changes i];
		endif
	endfor
	if (length(changes) < 3)
		p = -1;
		return ;
	endif

	p = t(changes(3)) - t(changes(1));
endfunction
