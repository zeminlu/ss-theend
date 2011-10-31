periodos = [];
promedios = [];
desvioMin = 0.005;

for j=1:50000,
    t=[0:0.02:13];
    x0=[78,13];
    [t,x] = ode45(@func, t, x0);
    iteracion = j
    periodo = period(x(:,1),t) % con la funcion de gulle estimamos el periodo

    %
    %si usamos lomb descomentar lo siguiente:
    %[f p Prob] = lomb(t,x(:,1),4,2); 
    %[~, index] = max(p);
    %mostCommonFrequency = f(index)
    %periodo = 1/mostCommonFrequency
    periodos = [ periodos ; periodo];
    promedios = [ promedios ; mean(periodos)];
    if (length(promedios) > 50)
        desvioActual = std(promedios)
        if (desvioActual < desvioMin)
            break;
        end
    end
end

h = findobj(gca,'Type','patch');
set(h,'FaceColor','w','EdgeColor','k')
hist(periodos, 16)

%con el spectrum analisys y nysquit o como se escriba
%
%t=[0:0.1:100];
%x0=[1,1];
%[t,x] = ode45(@func, t, x0);
%plot(t,x(:,1),'r',t,x(:,2),'b')
%%y = fftshift(fft(x(:,1)),1);
%
%
%

%plot(real(y),imag(y),'ro')
%title('Fourier Coefficients in the Complex Plane');
%xlabel('Real Axis');
%ylabel('Imaginary Axis');

%n=length(y);
%power = abs(y(1:floor(n/2))).^2;
%nyquist = 1/2;
%freq = (1:n/2)/(n/2)*nyquist;

%period=1./freq;
%plot(period,power);
%axis([0 40 0 2e+7]);
%ylabel('Power');
%xlabel('Period (Years/Cycle)');

%hold on;
%index=find(power==max(power));
%mainPeriodStr=num2str(period(index));
%periodo = period(index)

%plot(period(index),power(index),'r.', 'MarkerSize',25);
%text(period(index)+2,power(index),['Period = ',mainPeriodStr]);
%hold off;