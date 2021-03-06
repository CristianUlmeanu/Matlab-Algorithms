function [L] = FactCholesky2(A,b)
%Factorizarea Cholesky metoda 2
a=A(1,1);
[m,n]=size(A);
if(a<=0)
    error('A nu este pozitiv definita')
    return
end
for i=2:n
    L(i,1)=A(i,1)/sqrt(A(1,1));
end
for k=1:n
    suma=0;
    for j=1:k-1
        suma=suma+L(k,j)^2;
    end
    L(k,k)=sqrt(A(k,k)-suma);
    for i=k+1:n
        suma=0;
        for j=1:k-1
            suma=suma+L(i,j)*L(k,j);
        end
        L(i,k)=(A(i,k)-suma)/L(k,k);
    end
end
y=SubsAsc(L,b)
Lt=transpose(L);
x=SubsDesc(Lt,y)
end
