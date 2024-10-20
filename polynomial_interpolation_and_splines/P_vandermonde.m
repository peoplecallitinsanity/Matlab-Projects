function y_interp = P_vandermonde (coef, x_interp)
	% this function calculates y_interp using the Vandermonde coefficients
    y_interp = zeros(size(x_interp));
    % Horner method
    % evaluating polynomials at every point in x_interp
    for i = 1:length(x_interp)
        y_interp(i) = coef(end);
        for j = length(coef)-1:-1:1
            y_interp(i) = y_interp(i) * x_interp(i) + coef(j);
        endfor
    endfor
endfunction


