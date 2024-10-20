function similarity = cosine_similarity(A, B)
  # this function computes the cosine similarity between two column vectors
  similarity = dot(A, B) / (norm(A) * norm(B));
endfunction
