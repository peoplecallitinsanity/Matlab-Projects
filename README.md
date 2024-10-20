# Matlab Project for Anomaly Detection, Kernel Regression, Polynomial Interpolation, Numerical Music, Recommendation Systems and Stochastic Text Generation

This repository contains Matlab scripts and functions for six main tasks.

## Project Structure

- **outliers_detection**  
  This folder contains Matlab functions related to detecting anomalies in datasets using Gaussian distribution and calculating precision, recall, and F1 scores.

- **kernel_regression**  
  This folder contains functions related to implementing different types of kernel regression techniques, including linear, polynomial, and Gaussian kernels. It also includes optimization algorithms like Cholesky decomposition and the Conjugate Gradient method.

- **stochastic_text_generator**  
  This folder contains functions for generating text using a stochastic matrix approach, identifying distinct words and sequences, and building a sparse stochastic matrix.

- **polynomial_interpolation_and_splines**  
  This folder contains Matlab functions for tasks related to polynomial interpolation (Vandermonde matrix) and cubic splines, with utilities for parsing and plotting data.

- **numerical_music**  
  This folder contains Matlab scripts for generating sounds, applying filters (e.g., low-pass), adding reverb, and creating music-related visualizations like spectrograms.

- **recommendations**  
  This folder includes Matlab functions for building recommendation systems using techniques such as cosine similarity.

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

## Folder: `polynomial_interpolation_and_splines`

### Functions:

- **P_spline.m**  
  Computes polynomial splines with C2 continuity for data interpolation.

- **P_vandermonde.m**  
  Constructs a Vandermonde matrix for polynomial interpolation.

- **parse_data.m**  
  Parses input data into a form suitable for spline and Vandermonde interpolation.

- **plot_spline.m**  
  Plots the result of spline interpolation.

- **plot_vandermonde.m**  
  Plots the polynomial obtained from Vandermonde interpolation.

- **spline_c2.m**  
  Implements a cubic spline with C2 continuity.

- **vandermonde.m**  
  Constructs a Vandermonde matrix for polynomial interpolation based on a set of points.

---

## Folder: `numerical_music`

### Functions:

- **apply_reverb.m**  
  Adds reverb effects to a sound signal to simulate an acoustic environment.

- **create_instruments.m**  
  Generates synthetic musical instruments based on waveforms.

- **create_sound.m**  
  Produces sound signals using a specified waveform, frequency, and duration.

- **low_pass.m**  
  Implements a low-pass filter to remove high-frequency components from a sound signal.

- **oscillator.m**  
  Generates different waveforms (e.g., sine, square, triangle) for sound synthesis.

- **parse_pattern.m**  
  Parses musical patterns and sequences for sound generation.

- **plot_spectrogram.m**  
  Visualizes the spectrogram of a sound signal, showing frequency content over time.

- **spectrogram.m**  
  Computes the spectrogram of a sound signal using the Short-Time Fourier Transform (STFT).

- **stereo_to_mono.m**  
  Converts stereo audio signals to mono by averaging the channels.

---

## Folder: `recommendations`

### Functions:

- **cosine_similarity.m**  
  Calculates the cosine similarity between two vectors, commonly used in recommendation systems to measure similarity between users or items.

- **preprocess.m**  
  Preprocesses data (e.g., normalizing or formatting) for use in the recommendation system.

- **read_mat.m**  
  Reads and loads a `.mat` file containing user-item matrices or other relevant data.

- **recommendations.m**  
  Generates recommendations for a user based on cosine similarity with other users or items in the dataset.


## Requirements

- Matlab R2020b or later.
- Basic understanding of anomaly detection, kernel regression, and text generation techniques.

