function [S, f, t] = spectrogram(signal, fs, window_size)
    % this function computes the 2D Spectogram matrix, 
    % frequency and time vector for a signal
    
    % calculating the length of signal vector
    n = length(signal);
    % calculating the nr of windows based on window size
    windows = floor(n / window_size);
    S = zeros(window_size, windows);
    % applying hann function
    hanning_ = hanning(window_size);
    % computing frequency vector for frequencies > 0
    f = (0 : window_size - 1)' * fs / (2 * window_size);
    % computing time vector
    t = ((0 : ( windows - 1)) * (window_size / fs)).';
    
    % for each window we will get the Fourier Transformation
    for i = 1 : windows
        % the start index of current window
        first = (i - 1) * window_size + 1;
        % the end index of current window
        last = first + window_size - 1;
        % multiplying the signal with hanning window size
        changed_signal = signal(first : last) .* hanning_;
        
        % getting the Fourier Transform of the windowed signal
        fourier_transform = fft(changed_signal, 2 * window_size);
        S(:, i) = abs(fourier_transform(1 : window_size));
    endfor
endfunction
