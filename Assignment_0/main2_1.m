% ===================================
% TDA231 - Machine Learning
% HOMEWORK 0 - Task 2.1
% ===================================
% By Victor Nilsson 
% 931006-5132
% Vicnilss@student.chalmers.se
% And
% Bjarki Vilmarsson
% bjarkiv@student.chalmers.se
% 2017

clear all, clc, close all

% Variables
mu      =   [1;...
            1];
sigma   =   [0.1, -0.05;...
            -0.05, 0.2];
f=@(x,r) (x-mu)'/(sigma)*(x-mu)/2-r;

colorOrders = get(gca,'ColorOrder');
nPoints=1000;

% Multivariate normal random numbers
y = mvnrnd(mu,sigma,nPoints);

fig1 = figure(1);
hold on
% Plot level curves for r=1,2,3
for r=1:3
    h = ezplot(@(x,y)f([x;y],r),[-0.5,2.5]);
    set(h, 'Color', colorOrders(mod(r+1,length(colorOrders)),:))
    legendInfo{r} = ['$r=$' num2str(r)];
end

% Scatter plot of random numbers
inside=zeros(nPoints,1);
for i=1:nPoints
    yCur=y(i,:)';
    inside(i)=f(yCur,3)>0;
end
inside_idx = find(inside==0);
outside_idx = find(inside==1);

scatter(y(inside_idx,1),y(inside_idx,2),'xb')
scatter(y(outside_idx,1),y(outside_idx,2),'ok')
r=r+1;
legendInfo{r} = 'Inside';
r=r+1;
legendInfo{r} = 'Outside';


legend(legendInfo,'interpreter','latex','fontsize',12)
s_title=sprintf('%i points outside $f(x,3)=0$ out of %i points',length(outside_idx),nPoints);
title(s_title,'interpreter','latex','fontsize',16)
xlabel('$x_1$','interpreter','latex','fontsize',16)
ylabel('$x_2$','interpreter','latex','fontsize',16)
grid minor

saveas(fig1,'paper\Figures\plot2_1.png')
