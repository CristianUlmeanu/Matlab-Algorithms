%% Ex1.
clear all
f=@(x)sin(3.*x);
n=4;
X=linspace(1,2.2,n+1);
Y=f(X);
fplot(f,[0,3],'-r','LineWidth',2);%Graficul Functiei
hold on;
grid on;
plot(X,Y,'.b','Markersize',23);%Graficul punctelor
xgraf=linspace(1,2.2,200);
for i=1:length(xgraf)
    [y(i)]=SplineL(X,Y,xgraf(i));
end
plot(xgraf,y,'--y','LineWidth',2);%Graficul Splineului
figure();
type ("SplineL");

%% Ex2.
clear all;
f=@(x)sin(3.*x);
n=4;
X=linspace(1,2.2,n+1);
Y=f(X);
fplot(f,[0,3],'-r','LineWidth',2);%Graficul functiei
hold on;
grid on;
plot(X,Y,'.k','Markersize',23);%Graficul punctelor de interpolare
fp = @(x)3*cos(3.*x);
a=1;
fpa=fp(a);
xgraf=linspace(1,2.2,200);
for i=1:length(xgraf)
    [y(i),z(i)]=SplineP(X,Y,xgraf(i),fpa);
end
plot(xgraf,y,'--b','LineWidth',2);%Graficul Splineului
figure();
fplot(fp,[0.5,2.5],'-r','LineWidth',2);%Graficul derivatei functiei
hold on;
grid on;
plot(xgraf,z,'--g','LineWidth',2);%Graficul derivatei splineului
plot(xgraf,y,'.y','LineWidth',2);%Graficul splineului
type ("SplineP");
figure();

%% Ex3.
clear all;
X1=[1 2 5 6 7 8 10 13 17];
Y1=[3 3.7 3.9 4.2 5.7 6.6 7.1 6.7 4.5];
X2=[17 20 23 24 25 27 27.7];
Y2=[4.5 7 6.1 5.6 5.8 5.2 4.1];
X3=[27.7 28 29 30];
Y3=[4.1 4.3 4.1 3.0];
fpa1(1)=1;
fpa1(2)=-0.67;
fpa2(1)=3;
fpa2(2)=-4;
fpa3(1)=0.33;
fpa3(2)=-1.5;
xgr1=linspace(1,17,200);
xgr2=linspace(17,27.7,200);
xgr3=linspace(27.7,30,200);
for i=1:length(xgr1)
    [S1(i)]=SplinceC(X1,Y1,fpa1(1),fpa1(2),xgr1(i));
end
for i=1:length(xgr2)
    [S2(i)]=SplinceC(X2,Y2,fpa2(1),fpa2(2),xgr2(i));
end
for i=1:length(xgr3)
    [S3(i)]=SplinceC(X3,Y3,fpa3(1),fpa3(2),xgr3(i));
end
plot(xgr1,S1,'-k','LineWidth',2);
hold on;
grid on;
axis equal;
plot(xgr2,S2,'-k','LineWidth',2);
plot(xgr3,S3,'-k','LineWidth',2);
type ("SplinceC");
type ("GaussPivPart")