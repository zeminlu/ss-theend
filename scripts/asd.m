%integra una vez
t=0:0.5:100;
x0=[78,13];
[t,x] = ode45(@func, t, x0);
plot(t,x(:,1),'r',t,x(:,2),'b')
%y = fftshift(fft(x(:,1)),1);

%period(x(:,1),t)
   