# Matlab Project for Anomaly Detection, Kernel Regression, and Stochastic Text Generation

This repository contains Matlab scripts and functions for three main tasks: outlier detection, kernel regression, and a stochastic text generator. Each folder includes multiple Matlab files implementing specific functions as described below.

## Project Structure

- **outliers_detection**  
  This folder contains Matlab functions related to detecting anomalies in datasets using Gaussian distribution and calculating precision, recall, and F1 scores.

- **kernel_regression**  
  This folder contains functions related to implementing different types of kernel regression techniques, including linear, polynomial, and Gaussian kernels. It also includes optimization algorithms like Cholesky decomposition and the Conjugate Gradient method.

- **stochastic_text_generator**  
  This folder contains functions for generating text using a stochastic matrix approach, identifying distinct words and sequences, and building a sparse stochastic matrix.

---

## Folder: `outliers_detection`

### Functions:

- **estimate_gaussian(X)**  
  Computes the mean and variance matrix for the input dataset `X`. 

- **check_predictions(predictions, truths)**  
  Calculates false positives, false negatives, and true positives based on predicted and actual values.

- **optimal_threshold(truths, probabilities)**  
  Iterates over potential thresholds to find the one that maximizes the F1 score.

- **multivariate_gaussian(X, mean_values, variances)**  
  Calculates the probability density for a multivariate Gaussian distribution.

- **identify_outliers(X, yval)**  
  Identifies outliers in the dataset based on probability density and an optimal threshold.

- **metrics(true_positives, false_positives, false_negatives)**  
  Computes precision, recall, and F1 score from given metrics.

---

## Folder: `kernel_regression`

### Functions:

- **linear_kernel(x, y, other)**  
  Implements a linear kernel between vectors `x` and `y`.

- **polynomial_kernel(x, y, d)**  
  Implements a polynomial kernel based on the degree `d`.

- **gaussian_kernel(x, y, sigma)**  
  Calculates the Gaussian similarity between `x` and `y`.

- **split_dataset(X, y, percentage)**  
  Splits the dataset `X` into training and testing sets based on the given percentage.

- **build_kernel(X, f, f_param)**  
  Constructs a kernel matrix using the given kernel function `f` and its parameters.

- **cholesky(A)**  
  Performs Cholesky decomposition on matrix `A` and returns a lower triangular matrix.

- **get_lower_inverse(L)**  
  Inverts a lower triangular matrix `L` using Gaussian elimination.

- **get_prediction_params(K, y, lambda)**  
  Solves the system using Cholesky decomposition to find the parameters for kernel regression.

- **conjugate_gradient(A, b, x0, tol, max_iter)**  
  Implements the Conjugate Gradient algorithm to solve the system of linear equations.

- **get_prediction_params_iterative(K, y, lambda)**  
  Uses the Conjugate Gradient algorithm to solve for prediction parameters iteratively.

- **eval_value(x, X, f, f_param, a)**  
  Uses the trained model to predict a value for the input vector `x`.

---

## Folder: `stochastic_text_generator`

### Functions:

- **distinct_words(tokens)**  
  Identifies distinct words from a given token list.

- **k_secv(A, k)**  
  Forms sequences of `k` elements from array `A` and stores them in a cell array.

- **distinct_k_secv(cell_array)**  
  Identifies distinct `k` sequences from a list of sequences.

- **word_idx(distinct_wds)**  
  Maps each distinct word to a unique index in the dictionary.

- **k_secv_idx(distinct_k_sec)**  
  Maps each `k` sequence to its index in the list of distinct `k` sequences.

- **stochastic_matrix(k_secv_corpus, corpus_words, words_set, k_secv_set, k)**  
  Creates a sparse stochastic matrix representing the probability of certain words appearing after a sequence.

---

## Requirements

- Matlab R2020b or later.
- Basic understanding of anomaly detection, kernel regression, and text generation techniques.

