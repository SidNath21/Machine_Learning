clear ; close all; clc
fprintf("Linear Regression for predicting salary based on years of experience \n");

data = load('Salary_Data.txt');
X = data(: , 1);
y = data(: , 2);
m = length(y);

plotData(X, y);

X = [ones(m , 1), X];
theta = zeros(2, 1);

alpha = 0.03;
iterations = 2000;

% Using Gradient Descent

theta = gradientDescent(X, y, theta, alpha, iterations);

fprintf("Calculated Theta Values using Gradient Descent\n \n ");
disp(theta);
fprintf("\n");


hold on;
plot(X(:,2), X*theta, '-')

% Normal Equation

theta = normalEquation(X, y);
fprintf('Calculated Theta Values using Normal Equation \n \n')
disp(theta);
fprintf("\n");
