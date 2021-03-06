function [Intervale,c]= cautInterv (f, a, b, N)
x=linspace(a,b,N+1);
c=0;
for i=1:N
    if(f(x(i))*f(x(i+1))<0)
        c=c+1;
        Intervale(c,1)=x(i);
        Intervale(c,2)=x(i+1);
    end
end
end