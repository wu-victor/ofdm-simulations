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
[Hsr_1, Hsr_2, Hsr_3, Hsr_4, Hrd_1, Hrd_2, Hrd_3, Hrd_4] = generate_channels_HT(N, NUM_RAND);
display('Finished generating channels.');
display('******************************************');
Bsr_1 = abs(Hsr_1).^2;
Bsr_2 = abs(Hsr_2).^2;
Bsr_3 = abs(Hsr_3).^2;
Bsr_4 = abs(Hsr_4).^2;

Brd_1 = abs(Hrd_1).^2;
Brd_2 = abs(Hrd_2).^2;
Brd_3 = abs(Hrd_3).^2;
Brd_4 = abs(Hrd_4).^2;

count = 0;
for (SNR_DB = 0 : 3 : 24)
    ber;
    count = count + 1;

    BER_HRD_1(count) = ber_hrd_1;
    BER_HRD_2(count) = ber_hrd_2;
    BER_HRD_3(count) = ber_hrd_3;
    BER_HRD_4(count) = ber_hrd_4;
    
    BER_SFT_1(count) = ber_sft_1;
    BER_SFT_2(count) = ber_sft_2;
    BER_SFT_3(count) = ber_sft_3;
    BER_SFT_4(count) = ber_sft_4;
    
    WER_HRD_1(count) = wer_hrd_1;
    WER_HRD_2(count) = wer_hrd_2;
    WER_HRD_3(count) = wer_hrd_3;
    WER_HRD_4(count) = wer_hrd_4;
   
    WER_SFT_1(count) = wer_sft_1;
    WER_SFT_2(count) = wer_sft_2;
    WER_SFT_3(count) = wer_sft_3;
    WER_SFT_4(count) = wer_sft_4;

end
