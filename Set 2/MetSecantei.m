function [xaprox]=MetSecantei(f,a,b,x0,x1,E)
x(1)=x0;
x(2)=x1;
i=2;
if(f(a)*f(b)<0)
while (abs(x(i)-x(i-1))/abs(x(i-1)))>E
x(i+1)=x(i)-f(x(i))*(x(i)-x(i-1))/(f(x(i))-f(x(i-1)));    
if (f(x(i+1))~=0)
    xaprox=x(i+1);
    i=i+1;
        break;
    else
        i=i+1;
    end
end
end

end

