function [T,X]=rk4(f,a,b,Xa,N,P)
% Método de Runge-Kutta de orden 4para sistemas de EDO
%
% Entrada
% a , b extremos del intervalo
% Xa=[x1(a), ..., xn(a)] condiciones iniciales
% N es el número de subintervalo en (a,b)
% P un vector que permite introducir parámetros
% de los que dependan las derivadas de las
% funciones solucion del problema de valor inicial
%
% Salida   T el vector de valores equiespaciados
% de la variable independiente
% X=[x1(t) . . . xn(t)] donde xi(t) es la
% aproximacion a la solución para la i_ésima
% función incógnita.
% La función f(t,X,P) deberá ser ingresada en la línea de comando
% de Octave.

h=(b-a)/N;
T=zeros(N+1,1);
X=zeros(N+1,2);
T=(a:h:b)';
X(1,:)=Xa(1:2);
for k=1:N
            K1=h*feval(f, T(k),X(k,:),P);
            K2=h*feval(f, T(k)+h/2,X(k,:)+K1/2,P);
            K3=h*feval(f, T(k)+h/2,X(k,:)+K2/2,P);
            K4=h*feval(f, T(k)+h,X(k,:)+K3,P);
            X(k+1,:)=X(k,:)+(K1+2*K2+2*K3+K4)/6;
end

