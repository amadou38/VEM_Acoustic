function RHS = RHS_P(Np,Nvtx,p,Verts)
% Fonction qui calcule le second membre de la matrice des Pab pour l assemblage des elements
% 
% SYNOPSIS: RHS = RHS_P(Nvtx,Np,Verts,Area,he);
% INPUT   : Nvtx  : nombre de points du polygone
%           Np    : nombre de polynomes
%           Verts : polygone
%           Area  : l aire
%           he    : le diametre
% OUTPUT  : RHS   : la matrice
% AUTEUR : Diallo Amadou, 28/09/2020

RHS = zeros(Np,Nvtx);
wrap = @(x,y) mod(x-1,y) + 1;
for k = 1:Nvtx
    Vtx = Verts(k,:); % 
    Next = Verts(wrap(k+1, Nvtx), :);
    middle = 0.5*(Vtx + Next); % Middle point
    %Avg = norm(Vtx - Next); % Average
    for i = 1:Np
        RHS(i, k) = p{i}(middle(1),middle(2));
    end
end
end