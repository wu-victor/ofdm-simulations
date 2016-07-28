function out = decode_smbs(rx_smbs, NUM_RAND, hrd_sft_flag)

N = 128;

[num_rows, num_cols] = size(rx_smbs)
if ( (num_rows ~= 128) || (num_cols ~= NUM_RAND) )
    display('Error in decode_smbs.');
    return;
end

% Take the QPSK symbols from the OFDM subcarriers and re-arrange them into
% dirty bits.  Take the transpose back.
rx_leav_bits(1:NUM_RAND, 1 : 2 : 2*N) = real(rx_smbs.');   
rx_leav_bits(1:NUM_RAND, 2 : 2 : 2*N) = imag(rx_smbs.');

% Undo interleaving.
leav_sp = 2*N / 8;
for (lcv = 1 : leav_sp)
    rx_enc_bits(1:NUM_RAND, (lcv-1)*8+1 : lcv*8) = rx_leav_bits(1:NUM_RAND, lcv : leav_sp : 2*N);    
end

if (hrd_sft_flag == 0)
    % Round the bits to [0,1].  This is for hard decoding.
    hrd_enc_bits = round( (sign(rx_enc_bits) + 1) / 2 );
    for (lcv = 1 : NUM_RAND)
        if ( mod(lcv,10) == 0 )
        	display('Decoding bits for:')
        	trial_number = lcv
        end
        % Hard decoding, strip off last bit.
        hrd_dec_bits(lcv, 1:85) = vdec_hrd(hrd_enc_bits(lcv, 1:255), 83);
    end % for
    out = hrd_dec_bits(1:NUM_RAND, 1:83);
else
    % Offset the bits to have mean of 0.5.  This if for soft decoding.
    sft_enc_bits = (rx_enc_bits + 1) / 2;
    for (lcv = 1 : NUM_RAND)
        if ( mod(lcv,10) == 0 )
        	display('Decoding bits for:')
        	trial_number = lcv
        end
        % Soft decoding, strip off last bit.
        sft_dec_bits(lcv, 1:85) = vdec_sft(sft_enc_bits(lcv, 1:255), 83);
    end % for
    out = sft_dec_bits(1:NUM_RAND, 1:83);
end % if