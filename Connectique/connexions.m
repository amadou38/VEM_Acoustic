function [nelt,e2nod,nedg,e2dofs,e2edg,freeedg,freenod] = connexions(mesh)
% AUTEUR : Diallo Amadou, 28/09/2020

nelt = length(mesh.elements);
nnod = size(mesh.vertices,1);
e2nod = mesh.elements;

Nod2e = alg1(e2nod,nnod,nelt);
e2neigh = alg2(e2nod,Nod2e,nelt);
nedg = alg4(e2neigh,nelt);
Verts = mesh.vertices;
[e2edg,nedg,freeedg,freenod] = alg5(e2neigh,e2nod,Verts,nelt,nnod,nedg);
e2dofs = alg6(e2edg,nedg,nelt);

end