
% Main function
% AUTEUR : Diallo Amadou, 28/09/2020

clear; clc; close all;
addpath('Connectique/');
addpath('meshes/');
addpath('maillages/');
addpath('../../Mesh/mesh_files/');
mesh_file = 'mesh1.mat';
mesh = load(mesh_file);
mesh.vertices(:,2) = 1.1*mesh.vertices(:,2);
Neig = 15;
ind = 9;
[EV,V] = acoustics(ind,Neig,mesh);
a = 1; b = 1.1; n = ceil(Neig); m = n;

lmbd = Analytics(a,b,n,m);
%AnaV = AnalV(mesh,a,b,n,m);
%[lmbd, indices] = sort(lmbd);
%AnaV = AnaV(:,indices);
% figure
% for i = 1:ind
%     subplot(2,2,i)
%     P = AnaV(:,i);
%     size(P)
%     plot_pressure(P,mesh);
%     title(['Pressure fluctuation - lambda = ',num2str(EV(i))])
% end

x = 1:Neig;
figure,
p = plot(x,lmbd(1:Neig), 'r-x',x,EV,'b-.*');
% p(1).LineWidth = 2;
% p(2).LineWidth = 2;
%p(1).Marker = '*';
xlabel('iterations'); ylabel('eigenvalues');
legend('Analytical eigenvalues','Numerical eigenvalues');
