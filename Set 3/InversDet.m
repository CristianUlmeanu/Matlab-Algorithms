function [invA,detA]=InversDet(A);
[m,n]=size(A); 
contor=0; 
detA=1; 
o=0;
for i=1:m 
    for j=1:n 
        if i==j 
            I(i,i)=1; 
        else I(i,j)=0; 
        end
    end
end
for j=1:n
    [invA(:,j),c,val]=GaussPivTotala(A,I(:,j)); 
    contor=contor+c;
    if(o==0) 
        for i=1:n 
            detA=detA*val(i); 
        end
o=1; 
    end
end
S=contor; detA=((-1)^contor)*detA; 
end
