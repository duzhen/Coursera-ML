function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));
J = sum((X * theta - y).^2)/(2*m) + lambda * sum(theta(2:end).^2)/(2*m);

h = X * theta;
for t = 1:length(theta)
    if t ==1
        grad(t) = sum((h-y) .* X(:,t))/m;
    else
        grad(t) = sum((h-y) .* X(:,t))/m + lambda * theta(t) / m;
    end
end
% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%












% =========================================================================

grad = grad(:);

end
