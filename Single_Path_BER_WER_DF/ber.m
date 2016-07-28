SNR = 10 ^ (SNR_DB / 10);
Ptot = SNR;

% Generate 83 information bits.  Set last 2 bits to zero because using a
% convolutional code.
info_0 = round( rand(NUM_RAND, 83) );

smbs_0 = encode_info(info_0, NUM_RAND);

% At relay one.
rx_smbs_1 = abs(h_0) .* (sqrt(Ptot/N)*smbs_0) + ( conj(h_0) ./ abs(h_0) ) .* n_0;
hrd_info_1 = decode_smbs(rx_smbs_1, NUM_RAND, 0);
sft_info_1 = decode_smbs(rx_smbs_1, NUM_RAND, 1);
hrd_smbs_1 = encode_info(hrd_info_1, NUM_RAND);
sft_smbs_1 = encode_info(sft_info_1, NUM_RAND);

% At relay two.
rx_hrd_smbs_2 = abs(h_1) .* (sqrt(Ptot/N)*hrd_smbs_1) + ( conj(h_1) ./ abs(h_1) ) .* n_1;
rx_sft_smbs_2 = abs(h_1) .* (sqrt(Ptot/N)*sft_smbs_1) + ( conj(h_1) ./ abs(h_1) ) .* n_1;
hrd_info_2 = decode_smbs(rx_hrd_smbs_2, NUM_RAND, 0);
sft_info_2 = decode_smbs(rx_sft_smbs_2, NUM_RAND, 1);
hrd_smbs_2 = encode_info(hrd_info_2, NUM_RAND);
sft_smbs_2 = encode_info(sft_info_2, NUM_RAND);

% At relay three.
rx_hrd_smbs_3 = abs(h_2) .* (sqrt(Ptot/N)*hrd_smbs_2) + ( conj(h_2) ./ abs(h_2) ) .* n_2;
rx_sft_smbs_3 = abs(h_2) .* (sqrt(Ptot/N)*sft_smbs_2) + ( conj(h_2) ./ abs(h_2) ) .* n_2;
hrd_info_3 = decode_smbs(rx_hrd_smbs_3, NUM_RAND, 0);
sft_info_3 = decode_smbs(rx_sft_smbs_3, NUM_RAND, 1);
hrd_smbs_3 = encode_info(hrd_info_3, NUM_RAND);
sft_smbs_3 = encode_info(sft_info_3, NUM_RAND);

% At relay four.
rx_hrd_smbs_4 = abs(h_3) .* (sqrt(Ptot/N)*hrd_smbs_3) + ( conj(h_3) ./ abs(h_3) ) .* n_3;
rx_sft_smbs_4 = abs(h_3) .* (sqrt(Ptot/N)*sft_smbs_3) + ( conj(h_3) ./ abs(h_3) ) .* n_3;
hrd_info_4 = decode_smbs(rx_hrd_smbs_4, NUM_RAND, 0);
sft_info_4 = decode_smbs(rx_sft_smbs_4, NUM_RAND, 1);
hrd_smbs_4 = encode_info(hrd_info_4, NUM_RAND);
sft_smbs_4 = encode_info(sft_info_4, NUM_RAND);

% At Rx.
rx_hrd_smbs_5 = abs(h_4) .* (sqrt(Ptot/N)*hrd_smbs_4) + ( conj(h_4) ./ abs(h_4) ) .* n_4;
rx_sft_smbs_5 = abs(h_4) .* (sqrt(Ptot/N)*sft_smbs_4) + ( conj(h_4) ./ abs(h_4) ) .* n_4;
hrd_info_5 = decode_smbs(rx_hrd_smbs_5, NUM_RAND, 0);
sft_info_5 = decode_smbs(rx_sft_smbs_5, NUM_RAND, 1);

% Calculate ber.
ber_hrd_1 = sum( sum( abs(hrd_info_2 - info_0), 2 ) ) / ( NUM_RAND * 83 );
ber_hrd_2 = sum( sum( abs(hrd_info_3 - info_0), 2 ) ) / ( NUM_RAND * 83 );
ber_hrd_3 = sum( sum( abs(hrd_info_4 - info_0), 2 ) ) / ( NUM_RAND * 83 );
ber_hrd_4 = sum( sum( abs(hrd_info_5 - info_0), 2 ) ) / ( NUM_RAND * 83 );

ber_sft_1 = sum( sum( abs(sft_info_2 - info_0), 2 ) ) / ( NUM_RAND * 83 );
ber_sft_2 = sum( sum( abs(sft_info_3 - info_0), 2 ) ) / ( NUM_RAND * 83 );
ber_sft_3 = sum( sum( abs(sft_info_4 - info_0), 2 ) ) / ( NUM_RAND * 83 );
ber_sft_4 = sum( sum( abs(sft_info_5 - info_0), 2 ) ) / ( NUM_RAND * 83 );

% Calculate wer.
wer_hrd_1 = sum( sum( abs(hrd_info_2 - info_0), 2 ) > 0 ) / NUM_RAND;
wer_hrd_2 = sum( sum( abs(hrd_info_3 - info_0), 2 ) > 0 ) / NUM_RAND;
wer_hrd_3 = sum( sum( abs(hrd_info_4 - info_0), 2 ) > 0 ) / NUM_RAND;
wer_hrd_4 = sum( sum( abs(hrd_info_5 - info_0), 2 ) > 0 ) / NUM_RAND;

wer_sft_1 = sum( sum( abs(sft_info_2 - info_0), 2 ) > 0 ) / NUM_RAND;
wer_sft_2 = sum( sum( abs(sft_info_3 - info_0), 2 ) > 0 ) / NUM_RAND;
wer_sft_3 = sum( sum( abs(sft_info_4 - info_0), 2 ) > 0 ) / NUM_RAND;
wer_sft_4 = sum( sum( abs(sft_info_5 - info_0), 2 ) > 0 ) / NUM_RAND;

return
