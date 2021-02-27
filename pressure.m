function P = pressure(Lambda,w,e2dofs,mesh)
% AUTEUR : Diallo Amadou, 28/09/2020
P= zeros(length(e2dofs),1);
for e = 1:length(e2dofs)
    [~,~,~,~,Area] = Polygon(mesh,e);
    wi = sign(e2dofs{e})'.*w(abs(e2dofs{e}));
    P(e) = Lambda*pressElt(wi,Area);
end

end