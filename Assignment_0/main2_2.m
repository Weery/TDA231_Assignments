% ===================================
% TDA231 - Machine Learning
% HOMEWORK 0 - Task 2.2
% ===================================
% By Victor Nilsson
% Vicnilss@student.chalmers.se
% 931006-5132
% 2017

clear all, clc, close all

X = load('dataset0.txt');
cov_x = cov(X);
fig1=figure(1);
imagesc(cov_x)
colorbar;

corr_x = corr(X);
fig2=figure(2);
imagesc(corr_x)
colorbar;


Y=X/max(X(:));
cov_y = cov(Y);
fig3=figure(3);
imagesc(cov_y)
colorbar;

corr_y = corr(Y);
fig4=figure(4);
imagesc(corr_y)
colorbar;