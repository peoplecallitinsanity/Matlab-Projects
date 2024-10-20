% Computes the probability density function of the multivariate gaussian distribution.
function probabilities = multivariate_gaussian(X, mean_values, variances)
    [m,n] = size(X);
    probabilities = zeros(m, 1);
    a = (2 * pi) ^ (n / 2) * (sqrt(det(variances)));
    % inversing variances
    variances_inverse = inv(variances);
    for i = 1 : m
      dif = X(i, :) - mean_values;
      probabilities(i) = ( 1 / a ) * exp(-0.5 * (dif * variances_inverse * dif'));
    endfor
endfunction
