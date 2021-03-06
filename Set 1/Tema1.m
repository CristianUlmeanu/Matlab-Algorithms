%% Problema #1
[x1,x2]=ec_grad_2(1,-3,2)
[x1,x2]=ec_grad_2(1,-2,2)
[x1,x2]=ec_grad_2(1,-2,1)
type('ec_grad_2')
%% Problema #2
[y1,y2]=functie(2,0)
xmin=(-1);
xmax=1;
x=linspace(xmin,xmax,100);
for i=1:length(x)
if (x(i)>0)
    y(i)=exp(x(i));
    i=i+1;
elseif (x(i)==0);
    y(i)=exp
    i=i+1;
elseif (x(i)<0)
    y(i)=exp(-x(i));
    i=i+1;
end
end
plot(x,y,'--r', 'linewidth',3,'MarkerEdgeColor','y','MarkerFaceColor','g','MarkerSize',10)
grid on;
title ('Functie definita pe ramuri','FontSize',20,'FontAngle','Italic','Color','r');
xlabel('x','FontSize',25,'Color','r')
ylabel('y','FontSize',25,'Color','r')
legend
type('functie')
%% Problema #3
a=[-3 4 7 4 7 -6 0 3 9 0];
%r=randi(500,1,100)
[max,k,p]= maxim(a)
type('maxim')
%% Problema #4
a1=[2 3 4 5 6]
[b]=invers(a1)
type('invers')
%% Problema #5
n1=10;n2=20;n3=30;n=0;ok=0;
S11=0; S12=0; S13=0; S14=0;

%a
for k=1:n1
S11=S11+1/(2^k);
end
for k=1:n2
S12=S12+1/(2^k);
end
for k=1:n3
S13=S13+1/(2^k);
end
S11 
S12 
S13

%b
S=1;
Ea1=abs(S-S11)
Ea2=abs(S-S12)
Ea3=abs(S-S13)

%c
Er1=(abs(S-S11))/(abs(S))*100;
Er2=(abs(S-S12))/(abs(S))*100;
Er3=(abs(S-S13))/(abs(S))*100;
F = sprintf('%s\n',repmat('%8g%%',1,6));
fprintf(F,Er1.')
fprintf('\n')
fprintf(F,Er2.')
fprintf('\n')
fprintf(F,Er3.')

%d
while ok==0
    n=n+1;
    S14=S14+1/(2^n);
    Er4=(abs(S-S14))/(abs(S))*100;
    if Er4==3
        n
        ok=1;
    elseif Er4<3
        n
        ok=1;
    end
end


