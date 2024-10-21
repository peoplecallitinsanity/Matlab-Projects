function [X_train, y_train, X_pred, y_pred] = split_dataset (X, y, percentage)

  n = round(percentage * size(y, 1));
  X_train = X(1:n, :);
  y_train = y(1:n);
  X_pred = X(n + 1:end, :);
  y_pred = y(n + 1:end);
endfunction
