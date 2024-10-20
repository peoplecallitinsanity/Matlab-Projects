function retval = k_secv_idx (distinct_k_sec)
    % return disctionary containing the indices of each elem from distinct_k_sec
    % getting size
    size = numel(distinct_k_sec);
    % saving keys
    key = distinct_k_sec;
    % saving the values
    val = num2cell(1:size);
    % creating the dictionary
    retval = containers.Map(key, val);
endfunction
