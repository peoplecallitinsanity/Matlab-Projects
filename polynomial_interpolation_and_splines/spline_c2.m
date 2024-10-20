function coef = spline_c2(x, y)
    % this function calculates the coefficients for a system solving
    % cubic spline interpolation
    n = length(x) - 1;
    N = 4 * n;
    % using a sparse matrix for efficiency
    matrixA = sparse([], [], [], N, N, 5 * N);
    matrix_sol = zeros(N, 1);
    % cubic spline interpolation conditions
    for i = 1:n
        x_index = x(i);
        x_index_1 = x(i+1);
        y_i = y(i);
        y_index_1 = y(i+1);
        % equation at x(i)
        matrixA(2*i-1, 4*i-3:4*i) = [1, 0, 0, 0];  % a_i
        matrix_sol(2*i-1) = y_i;
        % equation at x(i+1)
        matrixA(2*i, 4*i-3:4*i) = [1, x_index_1-x_index, (x_index_1-x_index)^2, (x_index_1-x_index)^3];
        matrix_sol(2*i) = y_index_1;
    endfor

    % continuity conditions
    if n > 1
        for i = 2:n
            x_index = x(i-1);
            x_index_1 = x(i);
            % prev index
            prev = 4 * (i - 2) + 1;
            % current index
            current = 4 * (i - 1) + 1;
            % first derivative
            matrixA(2*n + 2*i-3, prev:prev + 3) = [0, 1, 2*(x_index_1-x_index), 3*(x_index_1-x_index)^2];
            matrixA(2*n + 2*i-3, current:current + 3) = [0, -1, 0, 0];
            % second derivative
            matrixA(2*n + 2*i-2, prev:prev + 3) = [0, 0, 2, 6*(x_index_1-x_index)];
            matrixA(2*n + 2*i-2, current:current + 3) = [0, 0, -2, 0];
        endfor
    endif

    % spline interpolation conditions for boundaries
    matrixA(N-1, 1:4) = [0, 0, 2, 0];
    matrixA(N, N-3:N) = [0, 0, 2, 6*(x(end) - x(end-1))];
    coef = matrixA \ matrix_sol;
endfunction