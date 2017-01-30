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

sigma_ml = length(x).*var(x);
sigma_ml= mean(sigma_ml);

prior_distribution = @(s,alpha,beta) beta.^alpha/gamma(alpha)*s.^(-alpha-1).*exp(-beta./s);
posterior_distribution =@(s,alpha,beta) prior_distribution(s,alpha+1,beta+sqrt(sigma_ml));


x_axis = 0:0.01:10;
fig1 = figure(1)
plot(x_axis,prior_distribution(x_axis,1,1))
hold on
plot(x_axis,posterior_distribution(x_axis,1,1))
saveas(fig1,'./paper/Figures/plot2_2_a1.png')
fig2 = figure(2)
plot(x_axis,prior_distribution(x_axis,10,1))
hold on
plot(x_axis,posterior_distribution(x_axis,10,1))
saveas(fig2,'./paper/Figures/plot2_2_a2.png')

