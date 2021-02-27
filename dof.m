function D = dof(Np,Nvtx,Verts,he)
% Function calculant la matrice des degres de liberte: D_ra = dof_r(grad(p_a))
% 
% SYNOPSIS: D = dof(ne,np,p,Verts);
% INPUT   : Nvtx  : nbre de noeuds                  .Np  : nbre de monomes  
%           Verts : coordonees (x,y) de l element E              
%           Xe   : le centroide                     .he  : diametre
% OUTPUT  : D   : Matrice de degre de liberte
% AUTEUR : Diallo Amadou, 28/09/2020

D = zeros(Nvtx,Np);
wrap = @(x, y) mod(x-1, y) + 1;
q = {[1,0], [0,1]};
for k = 1:Nvtx
    Vtx = Verts(k,:); % 
    Next = Verts(wrap(k+1, Nvtx), :);
    Avg = norm(Vtx - Next);% Average
    Vec_normal = [Next(2) - Vtx(2), Vtx(1) - Next(1)]/Avg; % Normal vect          
    for i = 1:Np
        poly_degree = q{i};
        monomial_grad = poly_degree/he; % Gradient of a linear is constant
        D(k,i) = Avg*dot(monomial_grad, Vec_normal);
    end
end
end