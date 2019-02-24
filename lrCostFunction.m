function [J, Grad] = lrCostFunction(theta, X, y, lambda)

m = length(y); 

J = 0;

Grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================

Hypothesis= sigmoid(X.*theta);

J =-mean(y.*log(Hypothesis)+(1-y).*log(1-Hypothesis))+(lambda/2).*mean(theta(2:end).^2);

Grad(1,1)=(1/m)*(X(:,1)'*(Hypothesis-y)); 

Grad(2:end,1)=((1/m)*(X(:,2:end))'*(Hypothesis-y))+(lambda/m)*theta(2:end);

theta(1) = 0;

Grad = Grad(:);

end
