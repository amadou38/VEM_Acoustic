function p = basis(Np,Verts,Xe,Area,he,prec)
% Function calculant les fonctions de bases: p
% 
% SYNOPSIS: p = basis(Np,Verts,Xe,he,prec);
% INPUT   : Verts: les vertices               .Np  : nombre de polynomes                  
%           Xe   : le centroide               .he  : diametre
%           prec : la precision de calcul
% OUTPUT  : P   : la matrice des bases interieures
% AUTEUR : Diallo Amadou, 28/09/2020

p = {@(x,y) (x-Xe(:,1))/he, @(x,y) (y-Xe(:,2))/he};
for i = 1:Np
    cst = integral_fct(@(x,y) - p{i}(x,y),Verts,Xe,prec)/Area;
    p{i} = @(x,y) p{i}(x,y) + cst;
    %test = integral_fct(p{i},Verts,Xe,prec)
end