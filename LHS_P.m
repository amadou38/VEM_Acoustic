function Pab = LHS_P(Np,Area,he)
% Fonction qui calcule la matrice des Pab pour l assemblage des elements
% 
% SYNOPSIS: Pab = LHS_P(Np,he,Area);
% INPUT   : Np  : nombre de polynomes
%           Area: l aire
%           he  : le diametre
% OUTPUT  : Pab   : la matrice
% AUTEUR : Diallo Amadou, 28/09/2020

Pab = zeros(Np);
for i = 1:Np
    Pab(i,i) = Area/(he^2);
end

end