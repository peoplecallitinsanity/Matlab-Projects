function x = oscillator(freq, fs, dur, A, D, S, R)
    % this function generates a sine wave signal 
    % with a specific frequency and amplitude. 
    
    % initializing the time and x vector
    t = 0:1/fs:dur;
    t = t(:);
    x = sin(2 * pi * freq * t);
    
    % number of samples
    attack = floor(A * fs);
    decay = floor(D * fs);
    release = floor(R * fs);
    sustain = ceil(dur * fs) - attack - decay - release;
    % computing attack envelope 
    attack_envelope = linspace(0, 1, attack)';
    % computing decay envelope
    decay_envelope = linspace(1, S, decay)';
    % computing sustain envelope
    sustain_envelope = S * ones(sustain, 1);
    % computing release evelope
    release_envelope = linspace(S, 0, release)';
    % forming the envelope
    envelope = [attack_envelope; decay_envelope; sustain_envelope; release_envelope];
    x = x(1:length(envelope));
    x = x .* envelope;
endfunction
