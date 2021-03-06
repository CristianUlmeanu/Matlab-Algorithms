%% Ex 1;
A=[1 2 3; 2 5 8; 3 8 14];
b=[(-5);(-14);(-25)];
[L1]=FactCholesky(A,b)
[L2]=FactCholesky2(A,b)
L3=chol(A,'lower')%Verificare L
L1*transpose(L1);%Verificare L
X=inv(A)*b%Verificare rezultatele ecuatiei Ax=b
type('FactCholesky')
type('FactCholesky2')
type('SubsDesc')
type('SubsAsc')
%% Ex 2;
n=5;
for(i=1:n)
    a(i)=2*n-2*(i-1);
    b(i)=i^2;
end
for(i=1:n)
    for(j=1:n)
        A(i,i)=a(1);
        if(j>i)
            A(i,j)=a(j-i+1);
        end
        if(j<i)
            A(i,j)=a(i-j+1);
        end
    end
end
a=transpose(a);

%Criteriul Sylvester
for(i=1:n)
if(det(A([1:i],[1:i]))<0)
    error('Matricea nu este pozitiv definita')
    return;
end
end
fprintf('Matricea este pozitiv definita')
[L1]=FactCholesky(A,b)
L2=chol(A,'lower')%Verificare L
L1*transpose(L1);%Verificare L
X=inv(A)*b%Verificare rezultatele ecuatiei Ax=b
