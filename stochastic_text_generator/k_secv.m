function B = k_secv (A, k)
  % given an array [a b a b c] and k=2
  % should return [ab ba ab bc]
  size_A = numel(A);

  B = cell(size_A - k  , 1);
  for i = 1 : size_A - k
    x = A(i : i + k - 1);
    x = strjoin(x,' ');
    B{i, 1} = x;
  endfor
endfunction
