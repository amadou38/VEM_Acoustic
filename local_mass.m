function Me = local_mass(ne,np,p,Verts,Area,he,sigma_E)
% Fonction qui calcule la matrice de masse
%
% SYNOPSIS: Me = local_mass(ne,np,p,Verts,Area,he,sigma_E);
% INPUT   : ne   : nbre de noeuds        .Area: l aire de E  
%           Verts: coordonees (x,y) de E .p: base des monomes            
%           sigma_E   : paramètre        .np  : nbre de monomes
% OUTPUT  : Me    : Matrice de masse
% AUTEUR : Diallo Amadou, 28/09/2020

Pab = LHS_P(np,Area,he);
RHS = RHS_P(np,ne,p,Verts);
P = Pab\RHS; % Compute the projector to polynomials
D = dof(np,ne,Verts,he);
st_term = sigma_E*(eye(ne) - D*P)'*(eye(ne) - D*P); % for mass matrix

% Local bE
Me = P'*Pab*P + st_term;

end