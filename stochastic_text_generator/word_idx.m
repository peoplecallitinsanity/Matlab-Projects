function retval = word_idx (distinct_wds)
    % return the word_idx dictionary HINT: containers.Map
    % getting size
    size = numel(distinct_wds);
    % saving keys
    key = distinct_wds;
    % saving the values
    val = num2cell(1:size);
    % creating the dictionary
    retval = containers.Map(key, val);
endfunction
