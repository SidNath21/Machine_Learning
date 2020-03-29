function J = cost(X, y, theta)

    m = length(y);

    squareError = sum((X * theta - y).^2 );
    J = (1/(2*m)) * squareError;

end