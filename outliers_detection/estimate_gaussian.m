% This function estimates the parameters of a Gaussian distribution using the data in X.
function [mean_values variances] = estimate_gaussian(X)
    [m,n] = size(X)
    % mean for each feature
    mean_values = mean(X);
    variances = zeros(n, n);
    % centering the data by subtracting the mean
    X_norm = X - repmat(mean_values, m, 1);

    % getting covariance matrix by summing products
    for i = 1:m
        variances = variances + (X_norm(i, :)' * X_norm(i, :));
    end

    % dividing variance by the number of rows to get the total variance
    variances = variances / m;
endfunction
