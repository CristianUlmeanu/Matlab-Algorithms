%% Ex 1.

clear all
close all
clc
X=[2, 3, 5, 8, 12];
Y=[10, 15, 25, 40, 60];
n=4;

% Punctul a

syms x

for k=1:n+1
    L=1;
    for j=1:n+1
        if j~=k
            L=L*((x-X(j))/(X(k)-X(j)));
        end
    end
    Ln(k)=L;
ezplot(Ln(k));
tit=sprintf('Funtia L %d',k);
title(tit);
grid on;
figure();
end

% Punctul b

Pn=0;
for k=1:n+1
    Pn=Pn+Ln(k)*Y(k);
end
Pn=collect(Pn);

plot(X,Y,'.y','Markersize',30);
hold on
ezplot(Pn,[1,13]);
legend("Puncte interpolare", "Polinomul Pn(x)","Location", "North")
grid on
title('Grafic Polinom si punctele de interpolare')
figure();

%% Ex 2.

clear all
clc
X=[0.9, 1.3, 1.9, 2.1, 2.6, 3.0, 3.9, 4.4, 4.7, 5.0, 6.0, 7.0, 8.0, 9.2, 10.5, 11.3, 11.6, 12.0, 12.6, 13.0, 13.3];
Y=[1.3, 1.5, 1.85, 2.1, 2.6, 2.7, 2.4, 2.15, 2.05, 2.1, 2.25, 2.3, 2.25, 1.95, 1.4, 0.9, 0.7, 0.6, 0.5, 0.4, 0.25];
syms x;
y=NewtonDD(X,Y,x);
plot(X,Y,'.y','Markersize',20);
axis equal;
hold on;
y=collect(y);
ezplot(y,[0,14]);
grid on;
plot(X,Y,'-X','LineWidth',1);
title('Reprezentare rata salbatica prin metoda Lagrange');
type('NewtonDD');
%Din grafic putem observa ca metoda Lagrange nu este una potrivita pentru
%acest tip de exercitiu deoarece sufera oscilatii din ce in ce mai mari
%spre capete. Astfel din cauza fluctuatiilor nu se poate realiza forma. 
%Lagrange este o metoda cu erori semnificative

