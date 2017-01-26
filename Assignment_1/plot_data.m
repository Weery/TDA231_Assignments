function [] = plot_data(x)

size_X = size(x);

[mu, sigma] = sge(x);

fig = figure;

scatter(x(:,1),x(:,2))

hold on
xlabel('$x_1$','interpreter','latex','fontsize',16)
ylabel('$x_2$','interpreter','latex','fontsize',16)
title('Scatterplot for dataset, $X$','interpreter','latex','fontsize',16)
grid minor
h=[];
legendIterator=1;

for k=1:3
    h=[h plot_circle(mu,k*sigma)];
    inside= sum(inside_circle(x,mu,k*sigma));
    s = sprintf('k: %i, $x_k$/$x$: %.4f',k,inside/size_X(2));
    legendInfo{legendIterator} = [s];
    legendIterator = legendIterator +1;
end


legend(h,legendInfo,'interpreter','latex','fontsize',12)

saveas(fig,'./paper/Figures/plot2_1_scatter.png')