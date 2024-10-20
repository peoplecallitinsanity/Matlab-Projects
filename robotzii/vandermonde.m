function coef = vandermonde(x, y)
    % this function solves a system of equations and gives the coefficients found with
    % vandermonde interpolation
    n = length(x);

    % creating the matrix
    Vandermonde = ones(n, n);  
    Vandermonde(:, 2 : n) = x.^((2:n)-1);
    % solving the system
    coef = Vandermonde \ y;
endfunction
