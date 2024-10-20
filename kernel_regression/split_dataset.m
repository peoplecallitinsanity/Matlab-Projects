function [X_train, y_train, X_pred, y_pred] = split_dataset (X, y, percentage)
  # TO DO: împarte setul de date în 2 seturi:
  # un set de training si un set de test,
  # ambele reprezentate printr-o matrice de features un vector de clase
  # percentage este un parametru considerat intre 0 si 1

  n = round(percentage * size(y, 1));
  X_train = X(1:n, :);
  y_train = y(1:n);
  X_pred = X(n + 1:end, :);
  y_pred = y(n + 1:end);
endfunction
