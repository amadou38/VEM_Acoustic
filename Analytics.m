function lmbd = Analytics(a,b,n,m)
% valeurs propres analytique
% AUTEUR : Diallo Amadou, 28/09/2020

lmbd = zeros(n+1,m+1);
% k = 1;
for i = 0:n
    for j = 0:m
        if (i+j ~= 0)
            lmbd(i+1,j+1) = (pi^2)*((i/a)^2 + (j/b)^2);
        end
    end
end
lmbd = unique(round(lmbd,3));
lmbd = lmbd(2:end);
end