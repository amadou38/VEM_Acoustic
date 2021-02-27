function [EV,V] = acoustics(ind,Neig,mesh)
% Fonction qui calcule les valeurs et vecteurs propres du probleme
% acoustique par la methode des elements virtuels
%
% SYNOPSIS: [EV,V] = acoustics(mesh_file)
% INPUT:    mesh_file: chemin vers le domaine deja subdivise en polygones
% OUTPUT:   EV: vecteur contenant les valeurs propres
%           V : Matrice contenant les vecteurs propres (vecteurs colonnes)
%           associes aux valeurs propres de EV.
% AUTEUR : Diallo Amadou, 28/09/2020

Np = 2;
[nelt,~,nedg,e2dofs,~,freeedg,~] = connexions(mesh);
K = sparse(nedg, nedg); % Stiffness matrix
M = sparse(nedg, nedg); % Mass matrix
prec = 1;
for l = 1:nelt
    e2dof = e2dofs{l};
    [Verts,Xe,Nvtx,he,Area] = Polygon(mesh,l);
    sigma_E = 1;                     % A calculer
    p = basis(Np,Verts,Xe,Area,he,prec);
    Me = local_mass(Nvtx,Np,p,Verts,Area,he,sigma_E);
    Ae = Divmatrix(Nvtx,Area);
    Sign = sign(e2dof'*e2dof);
    e2dof = abs(e2dof);
    % Global matrices
    K(e2dof,e2dof) = K(e2dof,e2dof) + Sign.*(Ae + Me);
    M(e2dof,e2dof) = M(e2dof,e2dof) + Sign.*Me;
    %
end

idofs = ~freeedg; % aretes qui ne sont pas sur le bord
K = K(idofs,idofs);
M = M(idofs,idofs);
tic
[V,ev] = eigs(K,M,size(K,1));
toc
vec = round(diag(ev - eye(size(ev,1))),3);
[ev, indices] = unique(vec);
V = V(:,indices);
EV = zeros(Neig,1);
W = zeros(size(K,1),Neig);
k = 0;
for i = 1:size(K,1)
    if ((ev(i)>=6) && (k<Neig))
        k = k + 1;
        EV(k) = ev(i);
        W(:,k) = V(:,i);
    elseif (k == Neig)
        break;
    end
end
EV = EV';
figure
for i = 1:ind
    w = zeros(nedg,1);
    w(~freeedg) = W(:,i);
    P = pressure(EV(i),w,e2dofs,mesh);
    subplot(3,3,i)
    plot_pressure(P,mesh);
    title(['Pressure fluctuation - lambda = ',num2str(EV(i))])
end

end
