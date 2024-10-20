function signal = apply_reverb(signal, impulse_response)
    % this function simulates reverb by using an impulse response
    % if the impulse response is in stereo form 
    if size(impulse_response, 2) > 1
        % tranform it in mono 
        impulse_response = stereo_to_mono(impulse_response);
    endif
    % applying function to compute the convolution of the
    % signal and impulse response
    signal = fftconv(signal, impulse_response);
    % normalizing the signal
    signal = signal / max(abs(signal));
endfunction


