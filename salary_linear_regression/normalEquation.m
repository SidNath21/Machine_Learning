function [theta] = normalEquation(X, y)

theta = zeros(2, 1);
theta = pinv(transpose(X) * X) * transpose(X) * y;

end