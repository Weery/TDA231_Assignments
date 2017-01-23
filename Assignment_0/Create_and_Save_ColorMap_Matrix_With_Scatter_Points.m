function [] = Create_and_Save_ColorMap_Matrix_With_Scatter_Points(mat, title_name, file_name, scatter_points)

fig=figure;
imagesc(mat)
h=colorbar;
h.FontSize=10;
h.TickLabelInterpreter='latex';

hold on
s=scatter(scatter_points(:,1),scatter_points(:,2),200,'MarkerEdgeColor',[0.85,0.325,0.098],'MarkerFaceColor',[1,1,1],'LineWidth',2)
s=scatter(scatter_points(:,1),scatter_points(:,2),200,'MarkerEdgeColor',[0,0,0],'MarkerFaceColor',[1,1,1],'LineWidth',2)
s.Marker='x';
title(title_name, 'interpreter','latex','fontsize',16)
xlabel('Column, $c_x$', 'interpreter','latex', 'fontsize',16)
ylabel('Row, $r_y$','interpreter','latex','fontsize',16)


file_string = sprintf('paper\\Figures\\plot2_2_%s.png',file_name);
saveas(fig,file_string)
end