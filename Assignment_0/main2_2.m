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

% Find the smallest correlations in Y
min_corr_val = min(corr_y(:));
eps = 1e-10; % values within this epsilon are considered equal
[rows, columns]=find(abs(corr_y-min_corr_val) < eps);
title_string = sprintf('Minimum correlation for feature combination $(%i,%i)$',columns(1),rows(1));
Create_and_Save_ColorMap_Matrix_With_Scatter_Points(corr_x,title_string,'corr_y_scatter',[rows,columns]);