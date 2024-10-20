% Finds the best threshold to use for selecting outliers.
function [best_epsilon, best_F1, associated_precision, associated_recall] = optimal_threshold(truths, probabilities)

    best_epsilon = 0;
    best_F1 = 0;
    associated_precision = 0;
    associated_recall = 0;

    % determining the range for iterating over thresholds
    range = (max(probabilities) - min(probabilities)) / 1000;

    % iterating through min to max probabilities
    for i_eps = min(probabilities):range:max(probabilities)
        % predicting based on the current threshold
        predict = (probabilities < i_eps);

        % calculating metrics for the current threshold
        [false_positives, false_negatives, true_positives] = check_predictions(predict, truths);
        [precision, recall, F1] = metrics(true_positives, false_positives, false_negatives);

        % checking if founded threshold gives a better F1 score
        if F1 > best_F1
            % if yes, actualizing scores and epsilon
            best_F1 = F1;
            best_epsilon = i_eps;
            associated_precision = precision;
            associated_recall = recall;
        endif
    endfor
endfunction
