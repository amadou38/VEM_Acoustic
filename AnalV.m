function V = AnalV(mesh,a,b,n,m)
% Vecteurs propres analytique
% AUTEUR : Diallo Amadou, 28/09/2020
nelt = length(mesh.elements);
V = zeros(nelt,n*m);
k = 1;
lmbd = Analytics(a,b,n,m);
for i = 0:n
    for j = 0:m
        if (i+j ~= 0)
            for l = 1:nelt
                [~,Xe,~,~,~] = Polygon(mesh,l);
                V(l,k) = -lmbd(k)*(i/a)*sin(i*pi*Xe(1)/a).*cos(j*pi*Xe(2)/b);
            end
            k = k + 1;
        end
    end
end
k = 1;
for i = 0:n
    for j = 0:m
        if (i+j ~= 0)
            for l = 1:nelt
                [~,Xe,~,~,~] = Polygon(mesh,l);
                if (V(l,k) == 0)
                    V(l,k) = -lmbd(k)*(j/a)*cos(i*pi*Xe(1)/a).*sin(j*pi*Xe(2)/b);
                end
            end
            k = k + 1;
        end
    end
end
end