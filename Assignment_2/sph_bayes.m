function [P1, P2, Ytest] = sph_bayes(Xtest,mu,sigma)
    
diff1 = Xtest-mu(1,:);
diff2 = Xtest-mu(2,:);

gauss1 = 1/(2*pi*sigma(1)^2)^(1/3)*exp(-1/2*diff1*diff1'*1/sigma(1)^2);
gauss2 = 1/(2*pi*sigma(2)^2)^(1/3)*exp(-1/2*diff2*diff2'*1/sigma(2)^2);

summedGauss = gauss1+gauss2;

P1 = gauss1/summedGauss;
P2 = gauss2/summedGauss;


if (P1 > P2)
    Ytest = 1;
else
    Ytest = -1;
end

end