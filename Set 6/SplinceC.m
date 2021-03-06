function S = Splinec(X, Y, sp1, sp2, x)
n = length(X) - 1;

% Aflam coeficientii aj
for j = 1:n
    h(j) = X(j+1) - X(j);
    a(j) = Y(j);
end

%Definim matricea asociata sistemului
% Aflam coeficientii bj

B(1, 1) = 1;
B(n+1, n+1) = 1;
for j = 2:n
    B(j,j-1) = 1/h(j-1);
    B(j, j) = (2/h(j) + 2/h(j-1));
    B(j,j+1) = 1/(h(j));
end

V(1) = sp1;
V(n+1) = sp2;
for j = 2:n
    V(j) = -3/h(j-1)^2 * Y(j-1) + (3/h(j-1)^2 - 3/h(j)^2) * Y(j) + 3/h(j)^2 * Y(j+1);
end
b = GaussPivPart(B,V);

for j = 1:n
    d(j) = -2/h(j)^3 * (Y(j+1) - Y(j)) + 1/h(j)^2 * (b(j+1)+ b(j));
    c(j) = 3/h(j)^2 * (Y(j+1) - Y(j)) - (b(j+1) + 2 * b(j))/h(j);
end
for i = 1:length(x)
    for j = 1:n
        if x(i) >= X(j) && x(i) <= X(j+1)
           break;
        end
    end

S(i) = a(j) + b(j) * (x(i) - X(j)) + c(j) * (x(i) - X(j))^2 + d(j) * (x(i) - X(j))^3;
end
end
