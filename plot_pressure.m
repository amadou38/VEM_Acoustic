function plot_pressure(p,mesh)
% AUTEUR : Diallo Amadou, 28/09/2020

title('Pres fluct');
Nvtx = max(cellfun(@length, mesh.elements));
pad_fct = @(vtx_list) [vtx_list'     NaN(1,Nvtx-length(vtx_list))];
elts = cellfun(pad_fct, mesh.elements, 'UniformOutput', false);
elts = vertcat(elts{:});
Vertices = mesh.vertices;
patch('Faces',elts,'Vertices',Vertices,'FaceVertexCData',p/max(abs(p)),'FaceColor','flat');
axis('square')
xlim([min(mesh.vertices(:,1)) - 0.1, max(mesh.vertices(:,1)) + 0.1])
ylim([min(mesh.vertices(:,2)) - 0.1, max(mesh.vertices(:,2)) + 0.1])
zlim([min(p), max(p)])
xlabel('x'); ylabel('y'); zlabel('V');
colormap('jet');
colorbar

end