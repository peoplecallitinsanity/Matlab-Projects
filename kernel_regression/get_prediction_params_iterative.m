function [a] = get_prediction_params (K, y, lambda)
  # metode iterative
  m = size(K, 1);
  A = lambda * eye(m) + K;
  b = y;
  x0 = zeros(m, 1);
  tol = 1e-6;
  max_iter = 1e4;

  a = conjugate_gradient(A, b, x0, tol, max_iter);
endfunction

