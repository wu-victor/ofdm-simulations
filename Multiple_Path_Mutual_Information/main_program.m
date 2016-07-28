SNR = 10 ^ (SNR_DB / 10);

% Calculate powers.
Pct_1 = ones(N,1) * ( N * SNR ./ sum(SNR * bsr_1 + 1,1) );
Pct_2 = ones(N,1) * ( N * SNR ./ sum(SNR * bsr_2 + 1,1) );
Pct_3 = ones(N,1) * ( N * SNR ./ sum(SNR * bsr_3 + 1,1) );
Pct_4 = ones(N,1) * ( N * SNR ./ sum(SNR * bsr_4 + 1,1) );

Peq_1 = SNR ./ (SNR * bsr_1 + 1);
Peq_2 = SNR ./ (SNR * bsr_2 + 1);
Peq_3 = SNR ./ (SNR * bsr_3 + 1);
Peq_4 = SNR ./ (SNR * bsr_4 + 1);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%    

% Calculate ct capacities.
ct_1_all = mutual(N, 1, SNR, bsr_1, 0,     0,     0,     brd_1, 0,     0,     0,     Pct_1, 0,     0,     0);
ct_2_all = mutual(N, 2, SNR, bsr_1, bsr_2, 0,     0,     brd_1, brd_2, 0,     0,     Pct_1, Pct_2, 0,     0);
ct_3_all = mutual(N, 3, SNR, bsr_1, bsr_2, bsr_3, 0,     brd_1, brd_2, brd_3, 0,     Pct_1, Pct_2, Pct_3, 0);
ct_4_all = mutual(N, 4, SNR, bsr_1, bsr_2, bsr_3, bsr_4, brd_1, brd_2, brd_3, brd_4, Pct_1, Pct_2, Pct_3, Pct_4);

ct_1 = mean(ct_1_all);
ct_2 = mean(ct_2_all);
ct_3 = mean(ct_3_all);
ct_4 = mean(ct_4_all);

% Calculate eq capacities.
eq_1_all = mutual(N, 1, SNR, bsr_1, 0,     0,     0,     brd_1, 0,     0,     0,     Peq_1, 0,     0,     0);
eq_2_all = mutual(N, 2, SNR, bsr_1, bsr_2, 0,     0,     brd_1, brd_2, 0,     0,     Peq_1, Peq_2, 0,     0);
eq_3_all = mutual(N, 3, SNR, bsr_1, bsr_2, bsr_3, 0,     brd_1, brd_2, brd_3, 0,     Peq_1, Peq_2, Peq_3, 0);
eq_4_all = mutual(N, 4, SNR, bsr_1, bsr_2, bsr_3, bsr_4, brd_1, brd_2, brd_3, brd_4, Peq_1, Peq_2, Peq_3, Peq_4);

eq_1 = mean(eq_1_all);
eq_2 = mean(eq_2_all);
eq_3 = mean(eq_3_all);
eq_4 = mean(eq_4_all);
