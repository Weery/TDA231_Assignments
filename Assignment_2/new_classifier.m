function [Ytest] = new_classifier(Xtest, mu1, mu2)

b = 1/2*(mu1+mu2);
c = mu1-mu2;
f = sign (c'*(x-b)/(norm(c)));
%...

end