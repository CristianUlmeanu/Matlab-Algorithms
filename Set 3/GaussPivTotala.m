function [x,c,val] = GaussPivTotala(A,b)
%GaussPivTotala rezolva sisteme patratice de ecuatii liniare

%Synopsis: x=GaussPivTotala(A,b)
%Input: A=matrice patratica
%       b=vectorul termenilor liberi
%Output:x=vectorul solutie
[m,n]=size(A);
%se verifica daca matricea 'A' este patratica
if m~=n
    error('A nu este patratica')
    return
end
%se verifica compatibilitate dimensiuni
if length(b)~=n
    error('Incompatibilitate intre dimensiuni')
    return
end
[m,n]=size(A);
a(1)=1;
for sol=2:n
    a(sol)=a(sol-1)+1;
end
Ae=A;
for i=1:n
    Ae(i,n+1)=b(i);
end
contuor=0;
for piv=1:n
    maxpivot=Ae(piv,piv);
    p=piv;
    m=piv;
    for j=piv:n
    for i=piv:n
        if maxpivot<abs(Ae(i,j))
            maxpivot=abs(Ae(i,j));
            p=i;
            m=j;
        end
    end
    end
         if maxpivot==0
            error('Sistemul este incompatibil sau compatibil nedeterminat')
            return
         end
         if p~=piv
            Ae([p,piv],:)=Ae([piv,p],:);
            contuor=contuor+1;
         end
         if m~=piv
            Ae(:,[m,piv])=Ae(:,[piv,m]);
            a([m piv])=a([piv m]);%memorez intr-un vector cum se schimba coloanele, implicit valorile
            contuor=contuor+1;
         end
         for l=piv+1:n
             mlk=Ae(l,piv)/Ae(piv,piv);
             Ae(l,:)=Ae(l,:)-mlk*Ae(piv,:);
         end
end
if Ae(n,n)==0
    error('Sistemul este incompatibil sau compatibil nedeterminat')
    return
end
A=Ae(1:n,1:n);
b=Ae(:,n+1);
x=SubsDesc(A,b);
%Aici am facut rearanjarea solutiilor in cazul in care s-au interschimbat
%coloanele.
for i=1:n
    val(i)=Ae(i,i);
end
c=contuor;
for sol=1:n
    if a(sol)~=sol
        x([sol a(sol)])=x([a(sol) sol]);
        a([sol a(sol)])=a([a(sol) sol]);
    end
end
end
