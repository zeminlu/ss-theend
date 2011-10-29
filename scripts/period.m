%Funcion de guille que devuelve el periodo
%
function p = period(x,t)
    xm = x - mean(x);
    changes = [];
    for i = 1:(length(xm)-1)
        signo = sign(xm(i))*sign(xm(i+1));
        if(signo <= 0)
            changes = [changes i];
        end
    end
    if (length(changes) < 3)
        p = -1;
        return ;
    end

    p = t(changes(3)) - t(changes(1));
end