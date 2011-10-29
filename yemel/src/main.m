
% n la cantidad de realizaciones
n = 100;
periodX = periodY = [];
tinit = 0;
tend = 20;
initX = 78;
initY = 13;
plottingEnabled = false;
errParam = 0.001;


cond = true;
periodMean = 1;
periodMeanOld = 1;
i = 1;

while(cond)

	b = 0.035;
	lambda = randomN(1.5, 0.1 * 1.5);
	mu = randomN(1.2, sqrt(1.2*0.1));
	a = randomU(0.02 - 0.001, 0.02 + 0.001);
	

	% Valores iniciales del enunciado
	init = [initX, initY, tinit, tend];
	[t,x,y] = simulate(a,b,mu,lambda,init);
	
	if (plottingEnabled) 
		figure(i);
		% Imprimo los datos originales + la simulación
		plot(t,x, 'k-;Presa-Simulacion;', t,y,'k-;Predador-Simulacion;', 'LineWidth', 10);
	%	axis([tinit tend 0 350]);
		xlabel("Tiempo [yr]");
		ylabel("Poblacion");
		print("-dpdf", "../resultados/a1.pdf", "-F:16");
	endif
%	printf(".");
	fflush(stdout);
	periodX(i) = period(x,t);

	% Eliminamos los valores chotos
	if(periodX(i) == -1)
		continue;
	endif

%	periodY(i) = period(y,t);

	periodMeanOld = periodMean;

	if(i == 1)
		periodMean = periodX(1);
	else		
		periodMean = periodMean + periodX(i)/(i-1);
	endif

	err = (periodMean-periodMeanOld)/periodMeanOld

	if(i > 1 && abs(err) < errParam)
		cond = false;
	endif

	i = i + 1;
end
i


% TODO: Calcular estadísticas!!
clf;
hold on;
hist(periodX, 15);
xm = mean(periodX);
xs = std(periodX);
gato = normpdf([0:0.1:15], xm, xs);
%plot(gato);
hold off;

