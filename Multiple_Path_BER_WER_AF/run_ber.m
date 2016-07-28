clear all;

NUM_RAND = 100; % Number of realizations to average over.
N = 128; % Number of OFDM subcarriers.

% Generate noise.
display('******************************************');
display('Begin generating noises.');
n_pwr = 1 / N; % Assume the noise power = N0*B = 1.  Therefore, SNR = P_tot.
nsr_1 = sqrt(n_pwr/2) * (randn(N,NUM_RAND) + j * randn(N,NUM_RAND));
nrd_1 = sqrt(n_pwr/2) * (randn(N,NUM_RAND) + j * randn(N,NUM_RAND));

nsr_2 = sqrt(n_pwr/2) * (randn(N,NUM_RAND) + j * randn(N,NUM_RAND));
nrd_2 = sqrt(n_pwr/2) * (randn(N,NUM_RAND) + j * randn(N,NUM_RAND));

nsr_3 = sqrt(n_pwr/2) * (randn(N,NUM_RAND) + j * randn(N,NUM_RAND));
curr_state = randn('state');
randn('state',sum(100*clock));
nrd_3 = sqrt(n_pwr/2) * (randn(N,NUM_RAND) + j * randn(N,NUM_RAND));

nsr_4 = sqrt(n_pwr/2) * (randn(N,NUM_RAND) + j * randn(N,NUM_RAND));
nrd_4 = sqrt(n_pwr/2) * (randn(N,NUM_RAND) + j * randn(N,NUM_RAND));
randn('state', curr_state);

display('Finished generating noises.');
display('******************************************');

% Generate channels.
display('******************************************');
display('Begin generating channels.');
[hsr_1, hsr_2, hsr_3, hsr_4, hrd_1, hrd_2, hrd_3, hrd_4] = generate_channels_HT(N, NUM_RAND);
display('Finished generating channels.');
display('******************************************');
bsr_1 = abs(hsr_1).^2;
bsr_2 = abs(hsr_2).^2;
bsr_3 = abs(hsr_3).^2;
bsr_4 = abs(hsr_4).^2;

brd_1 = abs(hrd_1).^2;
brd_2 = abs(hrd_2).^2;
brd_3 = abs(hrd_3).^2;
brd_4 = abs(hrd_4).^2;

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
