function pred = eval_value(x, X, f, f_param, a)
   m = size(X, 1);
   pred = 0;
   for i = 1:m
      % evaluating value for current vector
      pred = pred + a(i) * f(x, X(i, :), f_param);
   end
endfunction
