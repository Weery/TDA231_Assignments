% ===================================
% TDA231 - Machine Learning
% HOMEWORK 0 - Task 2.2
% ===================================
% By Victor Nilsson 
% 931006-5132
% Vicnilss@student.chalmers.se
% And
% Bjarki Vilmarsson
% bjarkiv@student.chalmers.se
% 2017

clear all, clc, close all

X = load('dataset0.txt');
cov_x = cov(X);

Create_and_Save_ColorMap_Matrix(cov_x,'Covariance matrix, $\verb|cov(X)|$','cov_x');

corr_x = corr(X);

Create_and_Save_ColorMap_Matrix(corr_x,'Correlation matrix, $\verb|corr(X)|$','corr_x');

% Create rescaled values
Y=X/max(X(:));
cov_y = cov(Y);

Create_and_Save_ColorMap_Matrix(cov_y,'Covariance matrix, $\verb|cov(Y)|$','cov_y');

corr_y = corr(Y);

Create_and_Save_ColorMap_Matrix(corr_x,'Correlation matrix, $\verb|corr(Y)|$','corr_y');
% 
minY = min(corr_y);
minY = min(minY);

fig5=figure(5)
scatter(X(:,8),X(:,12))
str = sprintf('Minimum correlation(%.4f) from the pair 8 and 12',minY)
title(str, 'interpreter','latex','fontsize',16)
xlabel('Feature 8', 'interpreter','latex', 'fontsize',16)
ylabel('Feature 12','interpreter','latex','fontsize',16)
file_string = sprintf('paper\\Figures\\plot2_2_%s.png','scatter');
saveas(fig5,file_string)


