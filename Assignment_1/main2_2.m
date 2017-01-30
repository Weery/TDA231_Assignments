% ===================================
% TDA231 - Machine Learning
% HOMEWORK 1 - Task 2.1
% ===================================
% By Victor Nilsson 
% 931006-5132
% Vicnilss@student.chalmers.se
% And
% Bjarki Vilmarsson
% bjarkiv@student.chalmers.se
% 2017-01-26

clear all, close all, clc

load('dataset1.mat');

[mu, sigma] = sge(x);

prior_distribution = @(s,alpha,beta) beta.^alpha/gamma(alpha)*s.^(-alpha-1).*exp(-beta./s);
posterior_distribution =@(s,alpha,beta) prior_distribution(s,alpha+1,beta+sigma^2);


x_axis_1 = 0:0.01:10;
fig1 = figure(1)
plot(x_axis_1,prior_distribution(x_axis_1,1,1))
hold on
plot(x_axis_1,posterior_distribution(x_axis_1,1,1))

legend({'Prior','Posterior'},'interpreter','latex')
title_string_1 = sprintf('Prior and posterior distributions for $\\alpha$: %i, $\\beta$: %i',1,1);
title(title_string_1,'interpreter','latex','fontsize',16)
xlabel('Parameter, $\sigma^2=s$','interpreter','latex','fontsize',16)
ylabel('PDF, $P(\sigma^2=s)$','interpreter','latex','fontsize',16)
saveas(fig1,'./paper/Figures/plot2_2_a1.png')

x_axis_2 = 0:0.001:1;
fig2 = figure(2)
plot(x_axis_2,prior_distribution(x_axis_2,10,1))
hold on
plot(x_axis_2,posterior_distribution(x_axis_2,10,1))
title_string_2 = sprintf('Prior and posterior distributions for $\\alpha$: %i, $\\beta$: %i',10,1);
title(title_string_2,'interpreter','latex','fontsize',16)
xlabel('Parameter, $\sigma^2=s$','interpreter','latex','fontsize',16)
ylabel('PDF, $P(\sigma^2=s)$','interpreter','latex','fontsize',16)
legend({'Prior','Posterior'},'interpreter','latex')
saveas(fig2,'./paper/Figures/plot2_2_a2.png')

