function [y] = SplineL(X,Y,x)
    n=length(X)-1;
    for j=1:n
        a(j)=Y(j);
        b(j)=(Y(j+1)-Y(j))/(X(j+1)-X(j));
    end
    for j=1:n
        if (x>=X(j) & x<=X(j+1))
            S=a(j)+b(j)*(x-X(j));
            break
        end
    end
y=S;
end