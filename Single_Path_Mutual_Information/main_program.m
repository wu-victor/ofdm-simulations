SNR = 10 ^ (SNR_DB / 10);

% Calculate powers for constant gain allocation.
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

% Calculate powers for equal power allocation.
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%    

% Calculate ct (constant gain) capacities.
ct_1_all = mutual(N, 1, SNR, b_0, b_1, 0,   0,   0,   Pct_1, 0,     0,     0);
ct_2_all = mutual(N, 2, SNR, b_0, b_1, b_2, 0,   0,   Pct_1, Pct_2, 0,     0);
ct_3_all = mutual(N, 3, SNR, b_0, b_1, b_2, b_3, 0,   Pct_1, Pct_2, Pct_3, 0);
ct_4_all = mutual(N, 4, SNR, b_0, b_1, b_2, b_3, b_4, Pct_1, Pct_2, Pct_3, Pct_4);

ct_1 = mean(ct_1_all);
ct_2 = mean(ct_2_all);
ct_3 = mean(ct_3_all);
ct_4 = mean(ct_4_all);

% Calculate eq (equal power) capacities.
eq_1_all = mutual(N, 1, SNR, b_0, b_1, 0,   0,   0,   Peq_1, 0,     0,     0);
eq_2_all = mutual(N, 2, SNR, b_0, b_1, b_2, 0,   0,   Peq_1, Peq_2, 0,     0);
eq_3_all = mutual(N, 3, SNR, b_0, b_1, b_2, b_3, 0,   Peq_1, Peq_2, Peq_3, 0);
eq_4_all = mutual(N, 4, SNR, b_0, b_1, b_2, b_3, b_4, Peq_1, Peq_2, Peq_3, Peq_4);

eq_1 = mean(eq_1_all);
eq_2 = mean(eq_2_all);
eq_3 = mean(eq_3_all);
eq_4 = mean(eq_4_all);