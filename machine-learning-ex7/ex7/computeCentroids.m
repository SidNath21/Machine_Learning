function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returns the new centroids by computing the means of the 
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by 
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

% Useful variables
[m n] = size(X);  % 300 x 2

% You need to return the following variables correctly.
centroids = zeros(K, n); % 3 x 2


% ====================== YOUR CODE HERE ======================
% Instructions: Go over every centroid and compute mean of all points that
%               belong to it. Concretely, the row vector centroids(i, :)
%               should contain the mean of the data points assigned to
%               centroid i.
%
% Note: You can use a for-loop over the centroids to compute this.
%

% Faster - Vectorized Implementation
% for i = 1:K
%     index_i = find(idx==i);       %indexes of all the input which belongs to cluster j
%     centroids(i,:)=(1/length(index_i)) * sum(X(index_i,:)); %calculating mean 
% end

sum = zeros(K, n);



 for i = 1 : K
    count = 0;
    for j = 1: m
        if idx(j) == i
            sum(i, :) = sum(i, :) + X(j, :);
            count = count + 1;
        end;
    end;

    centroids(i, :) = (1/count) * sum(i, :);

 end;







% =============================================================


end

