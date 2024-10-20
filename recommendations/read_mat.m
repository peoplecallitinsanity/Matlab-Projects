function mat = read_mat(path)
  # this function parses the .csv file and returns the matrix of values
  mat = csvread(path, 1, 1);
endfunction

