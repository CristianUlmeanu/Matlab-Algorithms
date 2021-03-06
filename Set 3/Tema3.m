%% Ex 1.
A1=[0 1 1; 2 1 5; 4 2 1];
b1=[3;5;1];
A2=[0 1 (-2); 1 (-1) 1; 1 0 (-1)];
b2=[4;6;2];

type('GaussPivTotala')

[x1]=GaussPivTotala(A1,b1)
if A1*x1==b1
    fprintf('Solutie a fost calculata corect\n')
else
    fprintf('Solutie gresita')
end
%Pentru ca pentru al doilea exemplu ar da eroare am ales sa nu il rulez si
%doar sa il comentez.

% [x2]=GaussPivTotala(A2,b2);
% if A2*x2==b2
%     fprintf('Solutie a fost calculata corect\n')
% else
%     fprintf('Solutie gresita')
% end
%% Ex 2.
A=0;
b=0;
n=10;
d=12;f=(-4);c=(-4);
for  i=1:n
    for j=1:n
        if i==j
            A(i,j)=d;
        elseif j==i-1
            A(i,j)=c;
        elseif j==i+1
            A(i,j)=f;
        else
            A(i,j)=0;
        end
    end
end
for i=1:n
    if (i==1 || i==n)
    b(i,1)=2;
    else
        b(i,1)=1;
    end
end

type('GaussPivTotala')

[x1]=GaussPivTotala(A,b)
if A*x1==b
    fprintf('Solutie a fost calculata corect\n')
else
    fprintf('Solutie gresita')
end
% Observatie:
% Nu am putut sa imi dau seama de ce pentru n=5,7,8 si 10
% programul imi da "Solutie gresita" chiar daca rezultatele sunt tot 0.250
% iar n-ul nu ar trebui sa influenteze solutiile. Deci programul ar trebui
% sa functioneze pentru orice n din moment ce pentru n de la 1-11 nu
% functioneaza cu 5,7,8,10. Puteti incerca sa vedeti, si daca se poate sa
% explicati ce am putut gresi.


%Ex 3.

type('InversDet')

[invA,detA]=InversDet(A)
x2=invA*b

%Continuare a observatie, solutiile ar trebui sa fie corecte zinand cont ca
%am rezolvat sistemul folosind inversa matrice si mi-a dat acelasi set de
%valor.


             
            
        
            