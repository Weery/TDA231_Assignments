function [] = Create_and_Save_ColorMap_Matrix(mat, title_name, file_name)

fig=figure;
imagesc(mat)
h=colorbar;
h.FontSize=10;
h.TickLabelInterpreter='latex';

title(title_name, 'interpreter','latex','fontsize',16)
xlabel('Column, $c_x$', 'interpreter','latex', 'fontsize',16)
ylabel('Row, $r_y$','interpreter','latex','fontsize',16)


file_string = sprintf('paper\\Figures\\plot2_2_%s.png',file_name);
saveas(fig,file_string)
end