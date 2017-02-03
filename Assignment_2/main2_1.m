% ===================================
% TDA231 - Machine Learning
% HOMEWORK 2 - Task 2.1
% ===================================
% By Victor Nilsson 
% 931006-5132
% Vicnilss@student.chalmers.se
% And
% Bjarki Vilmarsson
% bjarkiv@student.chalmers.se
% 2017-02-xx

clear all, close all, clc

% a) see report
load('dataset2.mat');
class_idx1 = find(y==1);
class_idx2 = find(y==-1);

[mu1,sigma1] = sge(x(class_idx1,:));
[mu2,sigma2] = sge(x(class_idx2,:));

% b) see sph_bayes.m

% c) see new_classifier.m

% d) 

