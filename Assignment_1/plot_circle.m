function h = plot_circle(center, radius)

hold on

theta = 0:0.01:2*pi;

h=plot(radius*cos(theta)+center(1),radius*sin(theta)+center(2),'linewidth',2);

end