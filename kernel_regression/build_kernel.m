function [K] = build_kernel (X, f, f_param)
  m = size(X, 1);
  K = zeros(m, m);

  for i = 1 : m
    for j = 1 : m
      % builing matrix K based of f function and f_param
      K(i, j) = f(X(i, :), X(j, :), f_param);
    end
  end
endfunction
