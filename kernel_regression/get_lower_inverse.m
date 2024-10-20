function [P] = get_lower_inverse (L)
  # TO DO: Determinati printr-o metoda matriceala neiterativa inversa
  # unei matrici de tipul lower
  n = size(L, 1);
  I = eye(n);

  for i = 1:n
    % scaling first row
    I(i, :) = I(i, :) / L(i, i);
    L(i, :) = L(i, :) / L(i, i);

    % applying substractions to make 0 under diagonal
    for j = i+1:n
      factor = L(j, i) / L(i, i);
      I(j, :) = I(j, :) - factor * I(i, :);
      L(j, i) = 0;
    end
  end
  P = I;
endfunction
