function [x] = conjugate_gradient (A, b, x0, tol, max_iter)
  % residual - how much the solution differs from the target solution
  residual = b - A * x0;
  % vector - initial search direction for the conjugate gradient algorithm
  vector = residual;
  x = x0;
  tol_squared = tol ^ 2;
  k = 1;
  while k <= max_iter && (residual' * residual) > (tol ^ 2)
    t_step = (residual' * residual) / (vector' * A * vector);
    % updating the solution by taking a step in dearch direction
    x = x + t_step * vector;
    r_old = residual;
    % updating residual by subtracting the product of step matrix A and search vector
    residual = residual - t_step * A * vector;
    % calculating conjugate coefficient
    conj_coefficient = (residual' * residual) / (r_old' * r_old);
    % updating direction
    vector = residual + conj_coefficient * vector;
    k = k + 1;
  endwhile
endfunction
