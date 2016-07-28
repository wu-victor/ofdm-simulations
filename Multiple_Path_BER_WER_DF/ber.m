SNR = 10 ^ (SNR_DB / 10);
Ptot = SNR;

% Generate 83 information bits.  Set last 2 bits to zero because using a
% convolutional code.
info_0 = round( rand(NUM_RAND, 83) );

smbs_0 = encode_info(info_0, NUM_RAND);

% At relay one.
rx_smbs_1 = abs(Hsr_1) .* (sqrt(Ptot/N)*smbs_0) + ( conj(Hsr_1) ./ abs(Hsr_1) ) .* nsr_1;
hrd_info_1 = decode_smbs(rx_smbs_1, NUM_RAND, 0);
sft_info_1 = decode_smbs(rx_smbs_1, NUM_RAND, 1);
hrd_smbs_1 = encode_info(hrd_info_1, NUM_RAND);
sft_smbs_1 = encode_info(sft_info_1, NUM_RAND);

% At relay two.
rx_smbs_2 = abs(Hsr_2) .* (sqrt(Ptot/N)*smbs_0) + ( conj(Hsr_2) ./ abs(Hsr_2) ) .* nsr_2;
hrd_info_2 = decode_smbs(rx_smbs_2, NUM_RAND, 0);
sft_info_2 = decode_smbs(rx_smbs_2, NUM_RAND, 1);
hrd_smbs_2 = encode_info(hrd_info_2, NUM_RAND);
sft_smbs_2 = encode_info(sft_info_2, NUM_RAND);

% At relay three.
rx_smbs_3 = abs(Hsr_3) .* (sqrt(Ptot/N)*smbs_0) + ( conj(Hsr_3) ./ abs(Hsr_3) ) .* nsr_3;
hrd_info_3 = decode_smbs(rx_smbs_3, NUM_RAND, 0);
sft_info_3 = decode_smbs(rx_smbs_3, NUM_RAND, 1);
hrd_smbs_3 = encode_info(hrd_info_3, NUM_RAND);
sft_smbs_3 = encode_info(sft_info_3, NUM_RAND);

% At relay four.
rx_smbs_4 = abs(Hsr_4) .* (sqrt(Ptot/N)*smbs_0) + ( conj(Hsr_4) ./ abs(Hsr_4) ) .* nsr_4;
hrd_info_4 = decode_smbs(rx_smbs_4, NUM_RAND, 0);
sft_info_4 = decode_smbs(rx_smbs_4, NUM_RAND, 1);
hrd_smbs_4 = encode_info(hrd_info_4, NUM_RAND);
sft_smbs_4 = encode_info(sft_info_4, NUM_RAND);

% At Rx.
% For one relay case.
g = Hrd_1;
rx_hrd_smbs = (conj(g)./abs(g)) .* (Hrd_1.*(sqrt(Ptot/N)*hrd_smbs_1) + nrd_1);
rx_sft_smbs = (conj(g)./abs(g)) .* (Hrd_1.*(sqrt(Ptot/N)*sft_smbs_1) + nrd_1);
hrd_info_m1 = decode_smbs(rx_hrd_smbs, NUM_RAND, 0);
sft_info_m1 = decode_smbs(rx_sft_smbs, NUM_RAND, 1);
% For two relay case.
g = Hrd_1 + Hrd_2;
rx_hrd_smbs = (conj(g)./abs(g)) .* (Hrd_1.*(sqrt(Ptot/N)*hrd_smbs_1) + nrd_1 + ...
                                    Hrd_2.*(sqrt(Ptot/N)*hrd_smbs_2) + nrd_2);
rx_sft_smbs = (conj(g)./abs(g)) .* (Hrd_1.*(sqrt(Ptot/N)*sft_smbs_1) + nrd_1 + ...
                                    Hrd_2.*(sqrt(Ptot/N)*sft_smbs_2) + nrd_2);                                
hrd_info_m2 = decode_smbs(rx_hrd_smbs, NUM_RAND, 0);
sft_info_m2 = decode_smbs(rx_sft_smbs, NUM_RAND, 1);
% For three relay case.
g = Hrd_1 + Hrd_2 + Hrd_3;
rx_hrd_smbs = (conj(g)./abs(g)) .* (Hrd_1.*(sqrt(Ptot/N)*hrd_smbs_1) + nrd_1 + ...
                                    Hrd_2.*(sqrt(Ptot/N)*hrd_smbs_2) + nrd_2 + ...
                                    Hrd_3.*(sqrt(Ptot/N)*hrd_smbs_3) + nrd_3);
rx_sft_smbs = (conj(g)./abs(g)) .* (Hrd_1.*(sqrt(Ptot/N)*sft_smbs_1) + nrd_1 + ...
                                    Hrd_2.*(sqrt(Ptot/N)*sft_smbs_2) + nrd_2 + ...
                                    Hrd_3.*(sqrt(Ptot/N)*sft_smbs_3) + nrd_3);                                
hrd_info_m3 = decode_smbs(rx_hrd_smbs, NUM_RAND, 0);
sft_info_m3 = decode_smbs(rx_sft_smbs, NUM_RAND, 1);
% For four relay case.
g = Hrd_1 + Hrd_2 + Hrd_3 + Hrd_4;
rx_hrd_smbs = (conj(g)./abs(g)) .* (Hrd_1.*(sqrt(Ptot/N)*hrd_smbs_1) + nrd_1 + ...
                                    Hrd_2.*(sqrt(Ptot/N)*hrd_smbs_2) + nrd_2 + ...
                                    Hrd_3.*(sqrt(Ptot/N)*hrd_smbs_3) + nrd_3 + ...
                                    Hrd_4.*(sqrt(Ptot/N)*hrd_smbs_4) + nrd_4);
rx_sft_smbs = (conj(g)./abs(g)) .* (Hrd_1.*(sqrt(Ptot/N)*sft_smbs_1) + nrd_1 + ...
                                    Hrd_2.*(sqrt(Ptot/N)*sft_smbs_2) + nrd_2 + ...
                                    Hrd_3.*(sqrt(Ptot/N)*sft_smbs_3) + nrd_3 + ...
                                    Hrd_4.*(sqrt(Ptot/N)*sft_smbs_4) + nrd_4);         
hrd_info_m4 = decode_smbs(rx_hrd_smbs, NUM_RAND, 0);
sft_info_m4 = decode_smbs(rx_sft_smbs, NUM_RAND, 1);

% Calculate ber.
ber_hrd_1 = sum( sum( abs(hrd_info_m1 - info_0), 2 ) ) / ( NUM_RAND * 83 );
ber_hrd_2 = sum( sum( abs(hrd_info_m2 - info_0), 2 ) ) / ( NUM_RAND * 83 );
ber_hrd_3 = sum( sum( abs(hrd_info_m3 - info_0), 2 ) ) / ( NUM_RAND * 83 );
ber_hrd_4 = sum( sum( abs(hrd_info_m4 - info_0), 2 ) ) / ( NUM_RAND * 83 );

ber_sft_1 = sum( sum( abs(sft_info_m1 - info_0), 2 ) ) / ( NUM_RAND * 83 );
ber_sft_2 = sum( sum( abs(sft_info_m2 - info_0), 2 ) ) / ( NUM_RAND * 83 );
ber_sft_3 = sum( sum( abs(sft_info_m3 - info_0), 2 ) ) / ( NUM_RAND * 83 );
ber_sft_4 = sum( sum( abs(sft_info_m4 - info_0), 2 ) ) / ( NUM_RAND * 83 );

% Calculate wer.
wer_hrd_1 = sum( sum( abs(hrd_info_m1 - info_0), 2 ) > 0 ) / NUM_RAND;
wer_hrd_2 = sum( sum( abs(hrd_info_m2 - info_0), 2 ) > 0 ) / NUM_RAND;
wer_hrd_3 = sum( sum( abs(hrd_info_m3 - info_0), 2 ) > 0 ) / NUM_RAND;
wer_hrd_4 = sum( sum( abs(hrd_info_m4 - info_0), 2 ) > 0 ) / NUM_RAND;

wer_sft_1 = sum( sum( abs(sft_info_m1 - info_0), 2 ) > 0 ) / NUM_RAND;
wer_sft_2 = sum( sum( abs(sft_info_m2 - info_0), 2 ) > 0 ) / NUM_RAND;
wer_sft_3 = sum( sum( abs(sft_info_m3 - info_0), 2 ) > 0 ) / NUM_RAND;
wer_sft_4 = sum( sum( abs(sft_info_m4 - info_0), 2 ) > 0 ) / NUM_RAND;

return
