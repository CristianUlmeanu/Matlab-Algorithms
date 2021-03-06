function[x]=SubsDesc(A,b)
%SubsDesc rezolva sisteme superior triunghiulare

%Synopsis: [x]=SubsDesc(A,b)
%Input: A=matrice superior triunghiulara (Aij=0,i>j)
%       b=vectorul termenilor liberi
%Output:x=vectorul solutie
[m,n]=size(A);
%se verifica daca matricea 'A' este patratica
if m~=n
    error('A nu este patratica')
    return
end
%se verifica daca matricea 'A' este superior triunghiulara
for i=2:m
    for j=1:i-1
        if A(i,j)~=0
            error('A nu este superior triunghiulara')
            return
        end
    end
end
%se verifica daca sistemul este compatibil determinat
for i=1:m
    if A(i,i)==0
        error('Sistemul nu admite solutie unica')
        return
    end
end
%se verifica compatibilitate dimensiuni
if length(b)~=n
    error('Incompatibilitate intre dimensiuni')
    return
end
x(n)= b(n)/A(n,n);
for  k=n-1:-1:1
    sum=0;
    for j=k+1:n
        sum=sum+A(k,j)*x(j);
    end
    x(k)=1/A(k,k)*(b(k)-sum);
end
x=transpose(x);