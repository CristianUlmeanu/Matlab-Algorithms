function [b] = invers(a1)
k=numel(a1);
i=1;
while i<=numel(a1)
    b(k)=a1(i);
    i=i+1;
    k=k-1;
end

