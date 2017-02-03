% ===================================
% TDA231 - Machine Learning
% HOMEWORK 2 - Task 2.2
% ===================================
% By Victor Nilsson
% 931006-5132
% Vicnilss@student.chalmers.se
% And
% Bjarki Vilmarsson
% bjarkiv@student.chalmers.se
% 2017-02-xx

clear all, close all, clc

% a)
load('digits.mat');
data=mat2gray(data);
digit_data_5 = data(:,:,5);
digit_data_8 = data(:,:,8);

length_class5=length(digit_data_5);
length_class8=length(digit_data_8);

% b)
feature_vector_5 = zeros(length_class5,32);
feature_vector_8 = zeros(length_class8,32);

for i=1:length_class5
    feature_5 = variance_feature(digit_data_5(:,i));
    feature_8 = variance_feature(digit_data_8(:,i));
    feature_vector_5(i,:) = feature_5';
    feature_vector_8(i,:) = feature_8';
end

% c)
error = zeros(2,5);

class_idx5 = randperm(length(digit_data_5));
class_idx8 = randperm(length(digit_data_5));


for i=1:5
    current_class_5 = class_idx5(length_class5/5*(i-1)+1:length_class5/5*i);
    training_class_5 = setdiff(class_idx5, current_class_5);
    
    current_class_8 = class_idx8(length_class8/5*(i-1)+1:length_class8/5*i);
    training_class_8 = setdiff(class_idx8, current_class_8);
    
    [mu1,sigma1] = sge(digit_data_5(:,training_class_5)');
    [mu2,sigma2] = sge(digit_data_8(:,training_class_8)');
    
    mu=[mu1;mu2];
    sigma = [sigma1;sigma2];
    
    estimated_class_new_classifier = zeros(0,2);
    
    for j = 1:length(current_class_5)
        [Ytest2] = new_classifier(digit_data_5(current_class_5(j)),mu(1,:),mu(2,:));
        estimated_class_new_classifier = [estimated_class_new_classifier; Ytest2, 1];
    end
    for j = 1:length(current_class_8)
        [Ytest2] = new_classifier(digit_data_8(current_class_8(j)),mu(1,:),mu(2,:));
        estimated_class_new_classifier = [estimated_class_new_classifier; Ytest2, -1];
    end
    error(1,i) = sum(abs(estimated_class_new_classifier(:,1)-estimated_class_new_classifier(:,2))/2);
end

for i=1:5
    current_class_5 = class_idx5(length_class5/5*(i-1)+1:length_class5/5*i);
    training_class_5 = setdiff(class_idx5, current_class_5);
    
    current_class_8 = class_idx8(length_class8/5*(i-1)+1:length_class8/5*i);
    training_class_8 = setdiff(class_idx8, current_class_8);
    
    [mu1,sigma1] = sge(feature_vector_5(training_class_5,:));
    [mu2,sigma2] = sge(feature_vector_8(training_class_8,:));
    
    mu=[mu1;mu2];
    sigma = [sigma1;sigma2];
    
    estimated_class_new_classifier = zeros(0,2);
    
    for j = 1:length(current_class_5)
        [Ytest2] = new_classifier(feature_vector_5(current_class_5(j)),mu(1,:),mu(2,:));
        estimated_class_new_classifier = [estimated_class_new_classifier; Ytest2, 1];
    end
    for j = 1:length(current_class_8)
        [Ytest2] = new_classifier(feature_vector_8(current_class_8(j)),mu(1,:),mu(2,:));
        estimated_class_new_classifier = [estimated_class_new_classifier; Ytest2, -1];
    end
    error(2,i) = sum(abs(estimated_class_new_classifier(:,1)-estimated_class_new_classifier(:,2))/2);
end


errors = sum(error,2)/length(error)/length(feature_vector_8)/2;


% d)



