function probability = gaussian_distribution(X, mean_value, variance)
    % finding standard deviation from variance
    std_dev = sqrt(variance);
    norm_factor = 1 / (std_dev * sqrt(2 * pi));
    diff = X - mean_value;
    % probability density function
    probability = norm_factor * exp(-0.5 * (dif .^ 2) / variance);
endfunction