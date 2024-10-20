function [a] = get_prediction_params (K, y, lambda)
  # TO DO: folosind metode neiterative, implementati logica
  # pentru a obtine vectorul coloana a, asa cum este descris in enuntul temei
  m = size(K, 1);
  A = lambda * eye(m) + K;
  L = cholesky(A);

  % finding z from L * z = y
  z = L \ y;
  % finging a from L' * a = z
  a = L' \ z;
endfunction
