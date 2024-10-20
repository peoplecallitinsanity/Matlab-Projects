function mono = stereo_to_mono(stereo)
  % this function transforms stereo audio to mono
  % calculating the mean for every row
  mono = mean(stereo, 2);
  % normalizing the mono vector
  mono = mono / max(abs(mono));

endfunction

