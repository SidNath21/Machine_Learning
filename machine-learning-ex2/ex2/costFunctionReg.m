function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

hypothesis = sigmoid(X * theta);
regularize = (lambda/(2*m)) * (sum(theta(2:end).^2));

% J = ((-1/m) * ((transpose(y))*log(hypothesis) + (transpose(1-y)) * log(1-hypothesis))) + regularize;

J = (-1/m) * sum((y.* log(hypothesis)) + ((1-y).*log(1-hypothesis))) + regularize;

grad(1) = (1/m) * ((transpose(X(:, 1))) * (hypothesis-y));
grad(2:end) = ((1/m) * (transpose(X(:, 2:end)) * (hypothesis-y))) + ((lambda/m) * theta(2:end));




% =============================================================

end
