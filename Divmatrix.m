function Ae = Divmatrix(Nvtx,Area)
% Fonction qui calcule la matrice des divergences pour l assemblage des elements
% 
% SYNOPSIS: D = Divmatrix(Np,Area);
% INPUT   : Np  : nombre de polynomes
%           Area: l aire
% OUTPUT  : D   : la matrice des divergences
% AUTEUR : Diallo Amadou, 28/09/2020

Ae = ones(Nvtx)/Area;


end