function recoms = recommendations(path, liked_theme, num_recoms, min_reviews, num_features)
    % this function gets the best `num_recoms` recommandations similar with 'liked_theme'
    matrix = read_mat(path);
    processed_mat = preprocess(matrix, min_reviews);
    % computing SVD of the matrix
    [U, S, V] = svds(processed_mat, num_features);
    % transposing the V matrix for using
    V = V';
    % getting the column corresponding to the liked theme
    column = V(:, liked_theme);
    cosine_similarities = zeros(1, size(V, 2));
    % for each column, compute cosine similarity
    for i = 1 : size(V, 2)
        cosine_similarities(i) = cosine_similarity(column, V(:, i));
    endfor
    % sorting the similarities in descending order
    [~, sorted] = sort(cosine_similarities, 'descend');
    % removing liked theme
    sorted(sorted == liked_theme) = [];
    % returning only the required indices
    recoms = sorted(1:min(num_recoms, numel(sorted)));
endfunction
