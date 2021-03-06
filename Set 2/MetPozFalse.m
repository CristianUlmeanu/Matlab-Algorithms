function [xaprox]=MetPozFalse(f,a,b,E)
if(f(a)*f(b)<0)
OK=1;
i=1;
a(i)=a;
b(i)=b;
x(i)=(a(i)*f(b(i))-b(i)*f(a(i)))/(f(b(i))-f(a(i)));
while (OK==1)   
if (f(a(i))*f(x(i))==0)
    a(i+1)=a(i);
    b(i+1)=b(i);
    x(i+1)=x(i);
elseif (f(a(i))*f(x(i))<0)
    a(i+1)=a(i);
    b(i+1)=x(i);
    x(i+1)=(a(i+1)*f(b(i+1))-b(i+1)*f(a(i+1)))/(f(b(i+1))-f(a(i+1)));
elseif (f(a(i))*f(x(i))>0)
    a(i+1)=x(i);
    b(i+1)=b(i);
    x(i+1)=(a(i+1)*f(b(i+1))-b(i+1)*f(a(i+1)))/(f(b(i+1))-f(a(i+1)));
end
    if(abs(x(i+1))<E)
        xaprox=x(i+1);
        OK=0;
    else
        i=i+1;
end
end
end
end


