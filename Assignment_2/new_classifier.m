function [Ytest] = new_classifier(Xtest, mu1, mu2)

b = 1/2*(mu1+mu2);
c = mu1-mu2;
Ytest = sign (c*(Xtest-b)'/(norm(c)));
if(Ytest == 0)
    Ytest = 1;
end

end