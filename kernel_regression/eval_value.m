function pred = eval_value(x, X, f, f_param, a)
   # TO DO: pentru un vector de input x, preziceti valoarea acestuia in
   # in functie de toti vectorii de input folositi pentru a antrena modelul
   # folosind functia de kernel f care are ca al 3-lea parametru f_param
   # si vectorul coloana a
   m = size(X, 1);
   pred = 0;
   for i = 1:m
      % evaluating value for current vector
      pred = pred + a(i) * f(x, X(i, :), f_param);
   end
endfunction
