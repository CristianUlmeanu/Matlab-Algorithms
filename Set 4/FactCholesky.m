function [L] = FactCholesky(A,b)
%Factorizarea Cholesky metoda 1
a=A(1,1);
[m,n]=size(A);
if(a<=0)
    error('A nu este pozitiv definita')
    return
end
L(1,1)=sqrt(A(1,1));
for(i=2:n)
    L(i,1)=A(i,1)/L(1,1);
end
for(k=2:n)
    suma=0;
    for(s=1:k-1)
        suma=suma+L(k,s)^2;
    end
    a=A(k,k)-suma;
    if(a<=0)
        error('A nu este pozitiv definita')
        return
    end
    L(k,k)=sqrt(a);
    for(i=k+1:n)
        suma=0;
        for(s=1:k-1)
            suma=suma+L(i,s)*L(k,s);
        end
        L(i,k)=1/L(k,k)*(A(i,k)-suma);
    end
end
y=SubsAsc(L,b)
Lt=transpose(L);
x=SubsDesc(Lt,y)
end

