function reduced_mat = preprocess(mat, min_reviews)
  % this function removes all user rows from `mat`
  % that have strictly less then `min_reviews` reviews
  % get the number of non-zero reviews for each row
  sum_reviews = sum(mat ~= 0, 2);
  % select rows that have the review count is bigger than min_reviews
  valid_row = sum_reviews >= min_reviews;
  reduced_mat = mat(valid_row, :);
endfunction
