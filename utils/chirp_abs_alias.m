function out_rst = chirp_abs_alias(rz, over_rate)
    % over_rate = Fs / BW;
    nfft = numel(rz);  % (the length of the vector).

    %  target number of FFT points based on the oversampling rate.
    target_nfft = round(nfft / over_rate); 
    cut1 = rz(1:target_nfft);
    cut2 = rz(end-target_nfft+1:end);
    
    % bsolute sum of the magnitudes of the two portions of the chirp signal.
    out_rst = abs(cut1) + abs(cut2);
end