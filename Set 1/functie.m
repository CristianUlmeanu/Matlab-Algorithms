function [y1,y2]=functie(a,b)
if a<1
    y1=exp(-a);
elseif a==0
    y1=exp;
else a>1
    y1=exp(a)
end
if b<1
    y2=exp(-b);
elseif b==0
    y2=exp;
else b>1
    y2=exp(b)
end  
end