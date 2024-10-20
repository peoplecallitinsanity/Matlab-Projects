function [L] = cholesky(A)
  # Realizează descompunerea Cholesky pentru o matrice pozitiv definită
  n = size(A, 1);
  L = zeros(n);

  for i = 1:n
    for j = 1:i-1
      L(i, j) = (A(i, j) - sum(L(i, 1:j-1) .* L(j, 1:j-1))) / L(j, j);
    endfor
    L(i, i) = sqrt(A(i, i) - sum(L(i, 1:i-1).^2));
  endfor
endfunction

