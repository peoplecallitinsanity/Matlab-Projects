function [false_positives, false_negatives, true_positives] = check_predictions(predictions, truths)
    % Calculating false positives, false negatives, and true positives based on pred and test columns
    false_positives = sum((predictions == 1) & (truths == 0));
    false_negatives = sum((predictions == 0) & (truths == 1));
    true_positives = sum((predictions == 1) & (truths == 1));
endfunction

