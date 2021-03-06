%% A
a=-5;
b=5;
x=linspace(a,b,100);
y=(2.*x.*cos(2.*x))-((x+1).^2);
plot(x,y,'.r', 'linewidth',3,'MarkerEdgeColor','y','MarkerFaceColor','g','MarkerSize',10)
grid on;
hold on;
legend on;
title ('Grafic Functie 1','FontSize',20,'FontAngle','Italic','Color','r');
xlabel('x','FontSize',25,'Color','r')
ylabel('y','FontSize',25,'Color','r')
figure();

%% B

type('MetSecantei')

%% C

type('MetPozFalse')

%% D
f=@(x) (2.*x.*cos(2.*x))-((x+1).^2);
[Intervale,c]=cautInterv(f,a,b,100);
type('cautInterv')
for(i=1:c)
    xaprox1(i)=MetSecantei(f,Intervale(i,1),Intervale(i,2),x(1),x(2),0.001)
    hold on;
    plot(xaprox1,f(xaprox1),'.', 'linewidth',3,'MarkerEdgeColor','r','MarkerFaceColor','r','MarkerSize',20)
    grid on;
end
legend;
title ('Grafic Functie 2','FontSize',20,'FontAngle','Italic','Color','r');
xlabel('x','FontSize',25,'Color','r')
ylabel('y','FontSize',25,'Color','r')
figure();

%% E
% Deoarece xaprox2 da valorile (-2.1906,-0.7980) cu o eroare 10^(-3)
% programul dureaza prea mult pentru a-l rezolva. cu E=2.2 programul iese
% destul de rapid si face graficul.
f=@(x) (2.*x.*cos(2.*x))-((x+1).^2);
[Intervale,c]=cautInterv(f,a,b,100);
for(i=1:c)
    xaprox2(i)=MetPozFalse(f,Intervale(i,1),Intervale(i,2),2.2)
    hold on;
    plot(xaprox2,f(xaprox2),'.', 'linewidth',3,'MarkerEdgeColor','r','MarkerFaceColor','r','MarkerSize',20)
    grid on;
end
legend;
title ('Grafic Functie 3','FontSize',20,'FontAngle','Italic','Color','r');
xlabel('x','FontSize',25,'Color','r')
ylabel('y','FontSize',25,'Color','r')