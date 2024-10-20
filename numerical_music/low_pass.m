function signal = low_pass(signal, fs, cutoff_freq)
    % this function returns a filtered signal by removing high
    % frequencies from a signal
    % computing the Fourier Transform 
    signal = fft(signal);
    n = length(signal);
    % all possible frequencies of the signal
    frequency_vector = (0:n-1)' * (fs / (2*n));
    % mask vector for filtering freqencies
    mask = (abs(frequency_vector) < cutoff_freq/2);
    % applying the mask on the signal
    signal_mask = signal .* mask;
    % inverse fourier transform
    inverse_fourier_signal = ifft(signal_mask);
    % normalizing
    signal = inverse_fourier_signal / max(abs(inverse_fourier_signal));
endfunction
