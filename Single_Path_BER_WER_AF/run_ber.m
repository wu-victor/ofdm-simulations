clear all;

NUM_RAND = 100; % Number of realizations to average over.
N = 128; % Number of OFDM subcarriers.

% Generate noise.
display('******************************************');
display('Begin generating noises.');
n_pwr = 1 / N; % Assume the noise power = N0*B = 1.  Therefore, SNR = P_tot.
n_0 = sqrt(n_pwr/2) * (randn(N,NUM_RAND) + j * randn(N,NUM_RAND));
n_1 = sqrt(n_pwr/2) * (randn(N,NUM_RAND) + j * randn(N,NUM_RAND));
n_2 = sqrt(n_pwr/2) * (randn(N,NUM_RAND) + j * randn(N,NUM_RAND));
n_3 = sqrt(n_pwr/2) * (randn(N,NUM_RAND) + j * randn(N,NUM_RAND));
n_4 = sqrt(n_pwr/2) * (randn(N,NUM_RAND) + j * randn(N,NUM_RAND));
display('Finished generating noises.');
display('******************************************');

% Generate channels.
display('******************************************');
display('Begin generating channels.');
[h_0, h_1, h_2, h_3, h_4] = generate_channels_HT(N, NUM_RAND);
display('Finished generating channels.');
display('******************************************');
b_0 = abs(h_0).^2;
b_1 = abs(h_0).^2;
b_2 = abs(h_0).^2;
b_3 = abs(h_0).^2;
b_4 = abs(h_0).^2;

count = 0;
for (SNR_DB = 0 : 3 : 24)
    ber;
    count = count + 1;
    BER_HRD_CT_1(count) = ber_hrd_ct_1;     WER_HRD_CT_1(count) = wer_hrd_ct_1;
    BER_HRD_EQ_1(count) = ber_hrd_eq_1;     WER_HRD_EQ_1(count) = wer_hrd_eq_1;
    BER_SFT_CT_1(count) = ber_sft_ct_1;     WER_SFT_CT_1(count) = wer_sft_ct_1;
    BER_SFT_EQ_1(count) = ber_sft_eq_1;     WER_SFT_EQ_1(count) = wer_sft_eq_1;

    BER_HRD_CT_2(count) = ber_hrd_ct_2;     WER_HRD_CT_2(count) = wer_hrd_ct_2;
    BER_HRD_EQ_2(count) = ber_hrd_eq_2;     WER_HRD_EQ_2(count) = wer_hrd_eq_2;
    BER_SFT_CT_2(count) = ber_sft_ct_2;     WER_SFT_CT_2(count) = wer_sft_ct_2;
    BER_SFT_EQ_2(count) = ber_sft_eq_2;     WER_SFT_EQ_2(count) = wer_sft_eq_2;
    
    BER_HRD_CT_3(count) = ber_hrd_ct_3;     WER_HRD_CT_3(count) = wer_hrd_ct_3;
    BER_HRD_EQ_3(count) = ber_hrd_eq_3;     WER_HRD_EQ_3(count) = wer_hrd_eq_3;
    BER_SFT_CT_3(count) = ber_sft_ct_3;     WER_SFT_CT_3(count) = wer_sft_ct_3;
    BER_SFT_EQ_3(count) = ber_sft_eq_3;     WER_SFT_EQ_3(count) = wer_sft_eq_3;
    
    BER_HRD_CT_4(count) = ber_hrd_ct_4;     WER_HRD_CT_4(count) = wer_hrd_ct_4;
    BER_HRD_EQ_4(count) = ber_hrd_eq_4;     WER_HRD_EQ_4(count) = wer_hrd_eq_4;
    BER_SFT_CT_4(count) = ber_sft_ct_4;     WER_SFT_CT_4(count) = wer_sft_ct_4;
    BER_SFT_EQ_4(count) = ber_sft_eq_4;     WER_SFT_EQ_4(count) = wer_sft_eq_4;
end
