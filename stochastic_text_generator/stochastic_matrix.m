function retval = stochastic_matrix(k_secv_corpus, corpus_words, words_set, k_secv_set, k)
    size_k_secv_set = numel(k_secv_set);
    size_words_set = numel(words_set);

     % Initialize a sparse matrix
    retval = sparse(size_k_secv_set, size_words_set);

    % Map k-sequences and words directly to indices
    [~, k_secv_j] = ismember(k_secv_corpus, k_secv_set);
    [~, words_j] = ismember(corpus_words, words_set);

    % Get correct k-sequences and words index
    k_secv_correct = k_secv_j(1:end)';
    words_set_correct = words_j(k + 1:end)';

    % Adding "1" at positions we need
    for i = 1:numel(k_secv_correct)
        if k_secv_correct(i) > 0 && words_set_correct(i) > 0
            retval(k_secv_correct(i), words_set_correct(i)) = retval(k_secv_correct(i), words_set_correct(i)) + 1;
        endif
    endfor
endfunction
