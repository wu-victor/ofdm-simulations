SNR = 10 ^ (SNR_DB / 10);
Ptot = SNR;

% Calculate powers.
denom_ct_1 = sum( SNR * b_0 + ... 
                            1, 1);
Pct_1 = ones(N,1) * (N * SNR ./ denom_ct_1);
denom_ct_2 = sum( SNR * b_0 .* Pct_1 .* b_1 + ...
                               Pct_1 .* b_1 + ...
                                            1, 1);
Pct_2 = ones(N,1) * (N * SNR ./ denom_ct_2);                                        
denom_ct_3 = sum( SNR * b_0 .* Pct_1 .* b_1 .* Pct_2 .* b_2 + ...
                               Pct_1 .* b_1 .* Pct_2 .* b_2 + ...
                                               Pct_2 .* b_2 + ...
                                                            1, 1);   
Pct_3 = ones(N,1) * (N * SNR ./ denom_ct_3);                                                        
denom_ct_4 = sum( SNR * b_0 .* Pct_1 .* b_1 .* Pct_2 .* b_2 .* Pct_3 .* b_3 + ...
                               Pct_1 .* b_1 .* Pct_2 .* b_2 .* Pct_3 .* b_3 + ...
                                               Pct_2 .* b_2 .* Pct_3 .* b_3 + ...
                                                               Pct_3 .* b_3 + ...
                                                                            1, 1);
Pct_4 = ones(N,1) * (N * SNR ./ denom_ct_4);

denom_eq_1 = SNR * b_0 + ... 
                       1;
Peq_1 = SNR ./ denom_eq_1;                   
denom_eq_2 = SNR * b_0 .* Peq_1 .* b_1 + ...
                          Peq_1 .* b_1 + ...
                                       1;
Peq_2 = SNR ./ denom_eq_2;                                   
denom_eq_3 = SNR * b_0 .* Peq_1 .* b_1 .* Peq_2 .* b_2 + ...
                          Peq_1 .* b_1 .* Peq_2 .* b_2 + ...
                                          Peq_2 .* b_2 + ...
                                                       1;   
Peq_3 = SNR ./ denom_eq_3;
denom_eq_4 = SNR * b_0 .* Peq_1 .* b_1 .* Peq_2 .* b_2 .* Peq_3 .* b_3 + ...
                          Peq_1 .* b_1 .* Peq_2 .* b_2 .* Peq_3 .* b_3 + ...
                                          Peq_2 .* b_2 .* Peq_3 .* b_3 + ...
                                                          Peq_3 .* b_3 + ...
                                                                       1;
Peq_4 = SNR ./ denom_eq_4;

% Calculate equivlaent channels.
gct_1 = sqrt( Ptot/N .* Pct_1 )                            .* h_0 .* h_1;
gct_2 = sqrt( Ptot/N .* Pct_1 .* Pct_2 )                   .* h_0 .* h_1 .* h_2;
gct_3 = sqrt( Ptot/N .* Pct_1 .* Pct_2 .* Pct_3 )          .* h_0 .* h_1 .* h_2 .* h_3;
gct_4 = sqrt( Ptot/N .* Pct_1 .* Pct_2 .* Pct_3 .* Pct_4 ) .* h_0 .* h_1 .* h_2 .* h_3 .* h_4;

geq_1 = sqrt( Ptot/N .* Peq_1 )                            .* h_0 .* h_1;
geq_2 = sqrt( Ptot/N .* Peq_1 .* Peq_2 )                   .* h_0 .* h_1 .* h_2;
geq_3 = sqrt( Ptot/N .* Peq_1 .* Peq_2 .* Peq_3 )          .* h_0 .* h_1 .* h_2 .* h_3;
geq_4 = sqrt( Ptot/N .* Peq_1 .* Peq_2 .* Peq_3 .* Peq_4 ) .* h_0 .* h_1 .* h_2 .* h_3 .* h_4;

% Calculate equivalent noises.
nct_1 = n_0 .* sqrt( Pct_1                            ) .* h_1                      + ...
        n_1;
nct_2 = n_0 .* sqrt( Pct_1 .* Pct_2                   ) .* h_1 .* h_2               + ...
        n_1 .* sqrt(          Pct_2                   )        .* h_2               + ...
        n_2;
nct_3 = n_0 .* sqrt( Pct_1 .* Pct_2 .* Pct_3          ) .* h_1 .* h_2 .* h_3        + ...
        n_1 .* sqrt(          Pct_2 .* Pct_3          )        .* h_2 .* h_3        + ...
        n_2 .* sqrt(                   Pct_3          )               .* h_3        + ...
        n_3;
nct_4 = n_0 .* sqrt( Pct_1 .* Pct_2 .* Pct_3 .* Pct_4 ) .* h_1 .* h_2 .* h_3 .* h_4 + ...
        n_1 .* sqrt(          Pct_2 .* Pct_3 .* Pct_4 )        .* h_2 .* h_3 .* h_4 + ...
        n_2 .* sqrt(                   Pct_3 .* Pct_4 )               .* h_3 .* h_4 + ...
        n_3 .* sqrt(                            Pct_4 )                      .* h_4 + ...
        n_4;
    
neq_1 = n_0 .* sqrt( Peq_1                            ) .* h_1                      + ...
        n_1;
neq_2 = n_0 .* sqrt( Peq_1 .* Peq_2                   ) .* h_1 .* h_2               + ...
        n_1 .* sqrt(          Peq_2                   )        .* h_2               + ...
        n_2;
neq_3 = n_0 .* sqrt( Peq_1 .* Peq_2 .* Peq_3          ) .* h_1 .* h_2 .* h_3        + ...
        n_1 .* sqrt(          Peq_2 .* Peq_3          )        .* h_2 .* h_3        + ...
        n_2 .* sqrt(                   Peq_3          )               .* h_3        + ...
        n_3;
neq_4 = n_0 .* sqrt( Peq_1 .* Peq_2 .* Peq_3 .* Peq_4 ) .* h_1 .* h_2 .* h_3 .* h_4 + ...
        n_1 .* sqrt(          Peq_2 .* Peq_3 .* Peq_4 )        .* h_2 .* h_3 .* h_4 + ...
        n_2 .* sqrt(                   Peq_3 .* Peq_4 )               .* h_3 .* h_4 + ...
        n_3 .* sqrt(                            Peq_4 )                      .* h_4 + ...
        n_4;        

% Generate 83 information bits.  Set last 2 bits to zero because using a
% convolutional code.
info = round( rand(NUM_RAND, 83) );
info_bits = info;
info_bits(1:NUM_RAND,84:85) = zeros(NUM_RAND,2);

% Encode the bits using a convolutional encoder.
display('******************************************');
display('Begin encoding bits.');
trs = poly2trellis(3, [7 7 6]);
for (lcv = 1 : NUM_RAND)
    if ( mod(lcv, 10)==0 )
    	display('Encoding bits for:')
        SNR_DB
    	trial_number = lcv
    end
    enc_bits(lcv, 1:255) = convenc(info_bits(lcv,1:85), trs, 0) * 2 - 1;
end
display('Finished encoding bits.');
display('******************************************');
% Pad with one zero to make the sequence 256 bits.
enc_bits(1:NUM_RAND,256) = zeros(NUM_RAND,1);

% Interleave the encoded bits.
leav_sp = 2*N / 8;
leav_bits(1:NUM_RAND, 0*leav_sp+1 : 1*leav_sp) = enc_bits(1:NUM_RAND, 1 : 8 : 2*N);
leav_bits(1:NUM_RAND, 1*leav_sp+1 : 2*leav_sp) = enc_bits(1:NUM_RAND, 2 : 8 : 2*N);
leav_bits(1:NUM_RAND, 2*leav_sp+1 : 3*leav_sp) = enc_bits(1:NUM_RAND, 3 : 8 : 2*N);
leav_bits(1:NUM_RAND, 3*leav_sp+1 : 4*leav_sp) = enc_bits(1:NUM_RAND, 4 : 8 : 2*N);
leav_bits(1:NUM_RAND, 4*leav_sp+1 : 5*leav_sp) = enc_bits(1:NUM_RAND, 5 : 8 : 2*N);
leav_bits(1:NUM_RAND, 5*leav_sp+1 : 6*leav_sp) = enc_bits(1:NUM_RAND, 6 : 8 : 2*N);;
leav_bits(1:NUM_RAND, 6*leav_sp+1 : 7*leav_sp) = enc_bits(1:NUM_RAND, 7 : 8 : 2*N);
leav_bits(1:NUM_RAND, 7*leav_sp+1 : 8*leav_sp) = enc_bits(1:NUM_RAND, 8 : 8 : 2*N);

% Modulate the bits onto QPSK symbols and place them in the OFDM
% subcarriers.  Take the transpose.
re_bits = leav_bits(1:NUM_RAND, 1 : 2 : 2*N);
im_bits = leav_bits(1:NUM_RAND, 2 : 2 : 2*N);
smbs = ( (re_bits + j * im_bits) / sqrt(2) ).'; % Unit power symbols.

% Go through the relay network.
rx_smbs_ct_1 = abs(gct_1) .* smbs + ( conj(gct_1)./abs(gct_1) ) .* nct_1;
rx_smbs_ct_2 = abs(gct_2) .* smbs + ( conj(gct_2)./abs(gct_2) ) .* nct_2;
rx_smbs_ct_3 = abs(gct_3) .* smbs + ( conj(gct_3)./abs(gct_3) ) .* nct_3;
rx_smbs_ct_4 = abs(gct_4) .* smbs + ( conj(gct_4)./abs(gct_4) ) .* nct_4;

rx_smbs_eq_1 = abs(geq_1) .* smbs + ( conj(geq_1)./abs(geq_1) ) .* neq_1;
rx_smbs_eq_2 = abs(geq_2) .* smbs + ( conj(geq_2)./abs(geq_2) ) .* neq_2;
rx_smbs_eq_3 = abs(geq_3) .* smbs + ( conj(geq_3)./abs(geq_3) ) .* neq_3;
rx_smbs_eq_4 = abs(geq_4) .* smbs + ( conj(geq_4)./abs(geq_4) ) .* neq_4;

% Take the QPSK symbols from the OFDM subcarriers and re-arrange them into
% dirty bits.  Take the transpose back.
rx_leav_bits_ct_1(1:NUM_RAND, 1 : 2 : 2*N) = real(rx_smbs_ct_1.');   rx_leav_bits_ct_1(1:NUM_RAND, 2 : 2 : 2*N) = imag(rx_smbs_ct_1.');
rx_leav_bits_ct_2(1:NUM_RAND, 1 : 2 : 2*N) = real(rx_smbs_ct_2.');   rx_leav_bits_ct_2(1:NUM_RAND, 2 : 2 : 2*N) = imag(rx_smbs_ct_2.');
rx_leav_bits_ct_3(1:NUM_RAND, 1 : 2 : 2*N) = real(rx_smbs_ct_3.');   rx_leav_bits_ct_3(1:NUM_RAND, 2 : 2 : 2*N) = imag(rx_smbs_ct_3.');
rx_leav_bits_ct_4(1:NUM_RAND, 1 : 2 : 2*N) = real(rx_smbs_ct_4.');   rx_leav_bits_ct_4(1:NUM_RAND, 2 : 2 : 2*N) = imag(rx_smbs_ct_4.');

rx_leav_bits_eq_1(1:NUM_RAND, 1 : 2 : 2*N) = real(rx_smbs_eq_1.');   rx_leav_bits_eq_1(1:NUM_RAND, 2 : 2 : 2*N) = imag(rx_smbs_eq_1.');
rx_leav_bits_eq_2(1:NUM_RAND, 1 : 2 : 2*N) = real(rx_smbs_eq_2.');   rx_leav_bits_eq_2(1:NUM_RAND, 2 : 2 : 2*N) = imag(rx_smbs_eq_2.');
rx_leav_bits_eq_3(1:NUM_RAND, 1 : 2 : 2*N) = real(rx_smbs_eq_3.');   rx_leav_bits_eq_3(1:NUM_RAND, 2 : 2 : 2*N) = imag(rx_smbs_eq_3.');
rx_leav_bits_eq_4(1:NUM_RAND, 1 : 2 : 2*N) = real(rx_smbs_eq_4.');   rx_leav_bits_eq_4(1:NUM_RAND, 2 : 2 : 2*N) = imag(rx_smbs_eq_4.');

% Undo interleaving.
for (lcv = 1 : leav_sp)
    rx_enc_bits_ct_1(1:NUM_RAND, (lcv-1)*8+1 : lcv*8) = rx_leav_bits_ct_1(1:NUM_RAND, lcv : leav_sp : 2*N);
    rx_enc_bits_ct_2(1:NUM_RAND, (lcv-1)*8+1 : lcv*8) = rx_leav_bits_ct_2(1:NUM_RAND, lcv : leav_sp : 2*N);
    rx_enc_bits_ct_3(1:NUM_RAND, (lcv-1)*8+1 : lcv*8) = rx_leav_bits_ct_3(1:NUM_RAND, lcv : leav_sp : 2*N);
    rx_enc_bits_ct_4(1:NUM_RAND, (lcv-1)*8+1 : lcv*8) = rx_leav_bits_ct_4(1:NUM_RAND, lcv : leav_sp : 2*N);

    rx_enc_bits_eq_1(1:NUM_RAND, (lcv-1)*8+1 : lcv*8) = rx_leav_bits_eq_1(1:NUM_RAND, lcv : leav_sp : 2*N);
    rx_enc_bits_eq_2(1:NUM_RAND, (lcv-1)*8+1 : lcv*8) = rx_leav_bits_eq_2(1:NUM_RAND, lcv : leav_sp : 2*N);
    rx_enc_bits_eq_3(1:NUM_RAND, (lcv-1)*8+1 : lcv*8) = rx_leav_bits_eq_3(1:NUM_RAND, lcv : leav_sp : 2*N);
    rx_enc_bits_eq_4(1:NUM_RAND, (lcv-1)*8+1 : lcv*8) = rx_leav_bits_eq_4(1:NUM_RAND, lcv : leav_sp : 2*N);
end

% Round the bits to [0,1].  This is for hard decoding.
hrd_enc_bits_ct_1 = round( (sign(rx_enc_bits_ct_1) + 1) / 2 );
hrd_enc_bits_ct_2 = round( (sign(rx_enc_bits_ct_2) + 1) / 2 );
hrd_enc_bits_ct_3 = round( (sign(rx_enc_bits_ct_3) + 1) / 2 );
hrd_enc_bits_ct_4 = round( (sign(rx_enc_bits_ct_4) + 1) / 2 );

hrd_enc_bits_eq_1 = round( (sign(rx_enc_bits_eq_1) + 1) / 2 );
hrd_enc_bits_eq_2 = round( (sign(rx_enc_bits_eq_2) + 1) / 2 );
hrd_enc_bits_eq_3 = round( (sign(rx_enc_bits_eq_3) + 1) / 2 );
hrd_enc_bits_eq_4 = round( (sign(rx_enc_bits_eq_4) + 1) / 2 );

% Offset the bits to have mean of 0.5.  This if for soft decoding.
sft_enc_bits_ct_1 = (rx_enc_bits_ct_1 + 1) / 2;
sft_enc_bits_ct_2 = (rx_enc_bits_ct_2 + 1) / 2;
sft_enc_bits_ct_3 = (rx_enc_bits_ct_3 + 1) / 2;
sft_enc_bits_ct_4 = (rx_enc_bits_ct_4 + 1) / 2;

sft_enc_bits_eq_1 = (rx_enc_bits_eq_1 + 1) / 2;
sft_enc_bits_eq_2 = (rx_enc_bits_eq_2 + 1) / 2;
sft_enc_bits_eq_3 = (rx_enc_bits_eq_3 + 1) / 2;
sft_enc_bits_eq_4 = (rx_enc_bits_eq_4 + 1) / 2;


% Decode the bits using Viterbi decoding.
display('******************************************');
display('Begin decoding bits.');
for (lcv = 1 : NUM_RAND)
    if ( mod(lcv,10) == 0 )
    	display('Decoding bits for:')
        SNR_DB
    	trial_number = lcv
    end
    
    % Hard decoding, strip off last bit.
    hrd_dec_bits_ct_1(lcv, 1:85) = vdec_hrd(hrd_enc_bits_ct_1(lcv, 1:255), 83);
    hrd_dec_bits_ct_2(lcv, 1:85) = vdec_hrd(hrd_enc_bits_ct_2(lcv, 1:255), 83);
    hrd_dec_bits_ct_3(lcv, 1:85) = vdec_hrd(hrd_enc_bits_ct_3(lcv, 1:255), 83);
    hrd_dec_bits_ct_4(lcv, 1:85) = vdec_hrd(hrd_enc_bits_ct_4(lcv, 1:255), 83);

    hrd_dec_bits_eq_1(lcv, 1:85) = vdec_hrd(hrd_enc_bits_eq_1(lcv, 1:255), 83);
    hrd_dec_bits_eq_2(lcv, 1:85) = vdec_hrd(hrd_enc_bits_eq_2(lcv, 1:255), 83);
    hrd_dec_bits_eq_3(lcv, 1:85) = vdec_hrd(hrd_enc_bits_eq_3(lcv, 1:255), 83);
    hrd_dec_bits_eq_4(lcv, 1:85) = vdec_hrd(hrd_enc_bits_eq_4(lcv, 1:255), 83);
        
    % Soft decoding, strip off last bit.
    sft_dec_bits_ct_1(lcv, 1:85) = vdec_sft(sft_enc_bits_ct_1(lcv, 1:255), 83);
    sft_dec_bits_ct_2(lcv, 1:85) = vdec_sft(sft_enc_bits_ct_2(lcv, 1:255), 83);
    sft_dec_bits_ct_3(lcv, 1:85) = vdec_sft(sft_enc_bits_ct_3(lcv, 1:255), 83);
    sft_dec_bits_ct_4(lcv, 1:85) = vdec_sft(sft_enc_bits_ct_4(lcv, 1:255), 83);

    sft_dec_bits_eq_1(lcv, 1:85) = vdec_sft(sft_enc_bits_eq_1(lcv, 1:255), 83);
    sft_dec_bits_eq_2(lcv, 1:85) = vdec_sft(sft_enc_bits_eq_2(lcv, 1:255), 83);
    sft_dec_bits_eq_3(lcv, 1:85) = vdec_sft(sft_enc_bits_eq_3(lcv, 1:255), 83);
    sft_dec_bits_eq_4(lcv, 1:85) = vdec_sft(sft_enc_bits_eq_4(lcv, 1:255), 83);
    
end % for
display('Finished decoding bits.');
display('******************************************');

% Eliminate tail bits.
hrd_ct_1 = hrd_dec_bits_ct_1(1:NUM_RAND, 1:83);
hrd_ct_2 = hrd_dec_bits_ct_2(1:NUM_RAND, 1:83);
hrd_ct_3 = hrd_dec_bits_ct_3(1:NUM_RAND, 1:83);
hrd_ct_4 = hrd_dec_bits_ct_4(1:NUM_RAND, 1:83);

hrd_eq_1 = hrd_dec_bits_eq_1(1:NUM_RAND, 1:83);
hrd_eq_2 = hrd_dec_bits_eq_2(1:NUM_RAND, 1:83);
hrd_eq_3 = hrd_dec_bits_eq_3(1:NUM_RAND, 1:83);
hrd_eq_4 = hrd_dec_bits_eq_4(1:NUM_RAND, 1:83);

sft_ct_1 = sft_dec_bits_ct_1(1:NUM_RAND, 1:83);
sft_ct_2 = sft_dec_bits_ct_2(1:NUM_RAND, 1:83);
sft_ct_3 = sft_dec_bits_ct_3(1:NUM_RAND, 1:83);
sft_ct_4 = sft_dec_bits_ct_4(1:NUM_RAND, 1:83);

sft_eq_1 = sft_dec_bits_eq_1(1:NUM_RAND, 1:83);
sft_eq_2 = sft_dec_bits_eq_2(1:NUM_RAND, 1:83);
sft_eq_3 = sft_dec_bits_eq_3(1:NUM_RAND, 1:83);
sft_eq_4 = sft_dec_bits_eq_4(1:NUM_RAND, 1:83);

% Calculate ber.
ber_hrd_ct_1 = sum( sum( abs(hrd_ct_1 - info), 2 ) ) / ( NUM_RAND * 83 );
ber_hrd_ct_2 = sum( sum( abs(hrd_ct_2 - info), 2 ) ) / ( NUM_RAND * 83 );
ber_hrd_ct_3 = sum( sum( abs(hrd_ct_3 - info), 2 ) ) / ( NUM_RAND * 83 );
ber_hrd_ct_4 = sum( sum( abs(hrd_ct_4 - info), 2 ) ) / ( NUM_RAND * 83 );

ber_hrd_eq_1 = sum( sum( abs(hrd_eq_1 - info), 2 ) ) / ( NUM_RAND * 83 );
ber_hrd_eq_2 = sum( sum( abs(hrd_eq_2 - info), 2 ) ) / ( NUM_RAND * 83 );
ber_hrd_eq_3 = sum( sum( abs(hrd_eq_3 - info), 2 ) ) / ( NUM_RAND * 83 );
ber_hrd_eq_4 = sum( sum( abs(hrd_eq_4 - info), 2 ) ) / ( NUM_RAND * 83 );

ber_sft_ct_1 = sum( sum( abs(sft_ct_1 - info), 2 ) ) / ( NUM_RAND * 83 );
ber_sft_ct_2 = sum( sum( abs(sft_ct_2 - info), 2 ) ) / ( NUM_RAND * 83 );
ber_sft_ct_3 = sum( sum( abs(sft_ct_3 - info), 2 ) ) / ( NUM_RAND * 83 );
ber_sft_ct_4 = sum( sum( abs(sft_ct_4 - info), 2 ) ) / ( NUM_RAND * 83 );

ber_sft_eq_1 = sum( sum( abs(sft_eq_1 - info), 2 ) ) / ( NUM_RAND * 83 );
ber_sft_eq_2 = sum( sum( abs(sft_eq_2 - info), 2 ) ) / ( NUM_RAND * 83 );
ber_sft_eq_3 = sum( sum( abs(sft_eq_3 - info), 2 ) ) / ( NUM_RAND * 83 );
ber_sft_eq_4 = sum( sum( abs(sft_eq_4 - info), 2 ) ) / ( NUM_RAND * 83 );

% Calculate wer.
wer_hrd_ct_1 = sum( sum( abs(hrd_ct_1 - info), 2 ) > 0 ) / NUM_RAND;
wer_hrd_ct_2 = sum( sum( abs(hrd_ct_2 - info), 2 ) > 0 ) / NUM_RAND;
wer_hrd_ct_3 = sum( sum( abs(hrd_ct_3 - info), 2 ) > 0 ) / NUM_RAND;
wer_hrd_ct_4 = sum( sum( abs(hrd_ct_4 - info), 2 ) > 0 ) / NUM_RAND;

wer_hrd_eq_1 = sum( sum( abs(hrd_eq_1 - info), 2 ) > 0 ) / NUM_RAND;
wer_hrd_eq_2 = sum( sum( abs(hrd_eq_2 - info), 2 ) > 0 ) / NUM_RAND;
wer_hrd_eq_3 = sum( sum( abs(hrd_eq_3 - info), 2 ) > 0 ) / NUM_RAND;
wer_hrd_eq_4 = sum( sum( abs(hrd_eq_4 - info), 2 ) > 0 ) / NUM_RAND;

wer_sft_ct_1 = sum( sum( abs(sft_ct_1 - info), 2 ) > 0 ) / NUM_RAND;
wer_sft_ct_2 = sum( sum( abs(sft_ct_2 - info), 2 ) > 0 ) / NUM_RAND;
wer_sft_ct_3 = sum( sum( abs(sft_ct_3 - info), 2 ) > 0 ) / NUM_RAND;
wer_sft_ct_4 = sum( sum( abs(sft_ct_4 - info), 2 ) > 0 ) / NUM_RAND;

wer_sft_eq_1 = sum( sum( abs(sft_eq_1 - info), 2 ) > 0 ) / NUM_RAND;
wer_sft_eq_2 = sum( sum( abs(sft_eq_2 - info), 2 ) > 0 ) / NUM_RAND;
wer_sft_eq_3 = sum( sum( abs(sft_eq_3 - info), 2 ) > 0 ) / NUM_RAND;
wer_sft_eq_4 = sum( sum( abs(sft_eq_4 - info), 2 ) > 0 ) / NUM_RAND;

return
