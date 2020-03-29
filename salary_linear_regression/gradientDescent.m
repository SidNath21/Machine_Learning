function [theta, J] = gradientDescent(X, y, theta, alpha, iterations)

m = length(y);
J = zeros(iterations, 1);

for i = 1:iterations

    error = (X * theta) - y;
    theta = theta - ((alpha/m) * transpose(X) * error);
    J(i) = cost(X, y, theta);

end

end