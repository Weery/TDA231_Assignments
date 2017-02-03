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

mu=[mu1;mu2];
sigma = [sigma1;sigma2];

% b) see sph_bayes.m

% c) see new_classifier.m

% d) 
class_idx1= class_idx1(randperm(length(class_idx1)));
class_idx2= class_idx2(randperm(length(class_idx2)));
length_class1 = length(class_idx1);
length_class2 = length(class_idx2);

error = zeros(2,5);

for i=1:5
    current_class_1 = class_idx1(length_class1/5*(i-1)+1:length_class1/5*i);
    training_class_1 = setdiff(class_idx1, current_class_1);
    
    current_class_2 = class_idx2(length_class2/5*(i-1)+1:length_class2/5*i);
    training_class_2 = setdiff(class_idx2, current_class_2);
    
    [mu1,sigma1] = sge(x(training_class_1,:));
    [mu2,sigma2] = sge(x(training_class_2,:));
    
    mu=[mu1;mu2];
    sigma = [sigma1;sigma2];
    
    estimated_class_sph = zeros(0,4);
    estimated_class_new_classifier = zeros(0,2);
    
    for j = 1:length(current_class_1)
        [P1, P2, Ytest] = sph_bayes(x(current_class_1(j)),mu,sigma);
        estimated_class_sph = [estimated_class_sph; P1, P2 Ytest, 1];
        [Ytest2] = new_classifier(x(current_class_1(j)),mu(1,:),mu(2,:));
        estimated_class_new_classifier = [estimated_class_new_classifier; Ytest2, 1];
    end
    for j = 1:length(current_class_2)
        [P1, P2, Ytest] = sph_bayes(x(current_class_2(j)),mu,sigma);
        estimated_class_sph = [estimated_class_sph; P1, P2 Ytest, -1];
        [Ytest2] = new_classifier(x(current_class_2(j)),mu(1,:),mu(2,:));
        estimated_class_new_classifier = [estimated_class_new_classifier; Ytest2, -1];
    end
    error(1,i) = sum(abs(estimated_class_sph(:,3)-estimated_class_sph(:,4))/2);
    error(2,i) = sum(abs(estimated_class_new_classifier(:,1)-estimated_class_new_classifier(:,2))/2);
end

averaged_error = sum(error,2)/length(error)/length(current_class_1);