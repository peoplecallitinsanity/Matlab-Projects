
function [precision, recall, F1] = metrics(true_positives, false_positives, false_negatives)
    % applying formulas for precision recall and F1 score
    if true_positives + false_positives > 0
        precision = true_positives / (true_positives + false_positives);
    else
        precision = 0;
    end

    if true_positives + false_negatives > 0
        recall = true_positives / (true_positives + false_negatives);
    else
        recall = 0;
    end

    if precision + recall > 0
        F1 = 2 * precision * recall / (precision + recall);
    else
        F1 = 0;
    end
endfunction

