function [max,k,p] = maxim(a)
%a=[-3 4 7 4 7 -6 0 3 9 0];
max=a(1);
i=1;
k=1;
while i<=numel(a)
    if max<a(i)
        max=a(i);
        k=1;
        i=i+1;
    elseif max==a(i)
        max
            k=k+1;
            i=i+1;
    elseif max>a(i)
        i=i+1;
    end
end
i=1;
z=1;
while i<numel(a)
    if max==a(i)
        p(z)=i;
        z=z+1;
        i=i+1;
    else
        i=i+1;
    end
end
end


