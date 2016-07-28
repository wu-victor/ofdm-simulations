% This will run 2500 simulations in 100 chunks.

OFFSET = 1;

rand('state', OFFSET);
randn('state', OFFSET);

run_ber;
a_BH_CT_1 = BER_HRD_CT_1;   a_BH_EQ_1 = BER_HRD_EQ_1;      
a_BH_CT_2 = BER_HRD_CT_2;   a_BH_EQ_2 = BER_HRD_EQ_2;
a_BH_CT_3 = BER_HRD_CT_3;   a_BH_EQ_3 = BER_HRD_EQ_3;
a_BH_CT_4 = BER_HRD_CT_4;   a_BH_EQ_4 = BER_HRD_EQ_4;

a_BS_CT_1 = BER_SFT_CT_1;   a_BS_EQ_1 = BER_SFT_EQ_1;      
a_BS_CT_2 = BER_SFT_CT_2;   a_BS_EQ_2 = BER_SFT_EQ_2;
a_BS_CT_3 = BER_SFT_CT_3;   a_BS_EQ_3 = BER_SFT_EQ_3;
a_BS_CT_4 = BER_SFT_CT_4;   a_BS_EQ_4 = BER_SFT_EQ_4;

a_WH_CT_1 = WER_HRD_CT_1;   a_WH_EQ_1 = WER_HRD_EQ_1;      
a_WH_CT_2 = WER_HRD_CT_2;   a_WH_EQ_2 = WER_HRD_EQ_2;
a_WH_CT_3 = WER_HRD_CT_3;   a_WH_EQ_3 = WER_HRD_EQ_3;
a_WH_CT_4 = WER_HRD_CT_4;   a_WH_EQ_4 = WER_HRD_EQ_4;

a_WS_CT_1 = WER_SFT_CT_1;   a_WS_EQ_1 = WER_SFT_EQ_1;      
a_WS_CT_2 = WER_SFT_CT_2;   a_WS_EQ_2 = WER_SFT_EQ_2;
a_WS_CT_3 = WER_SFT_CT_3;   a_WS_EQ_3 = WER_SFT_EQ_3;
a_WS_CT_4 = WER_SFT_CT_4;   a_WS_EQ_4 = WER_SFT_EQ_4;
save results_a.mat a_BH_CT_1 a_BH_CT_2 a_BH_CT_3 a_BH_CT_4 a_BH_EQ_1 a_BH_EQ_2 a_BH_EQ_3 a_BH_EQ_4 a_BS_CT_1 a_BS_CT_2 a_BS_CT_3 a_BS_CT_4 a_BS_EQ_1 a_BS_EQ_2 a_BS_EQ_3 a_BS_EQ_4 a_WH_CT_1 a_WH_CT_2 a_WH_CT_3 a_WH_CT_4 a_WH_EQ_1 a_WH_EQ_2 a_WH_EQ_3 a_WH_EQ_4 a_WS_CT_1 a_WS_CT_2 a_WS_CT_3 a_WS_CT_4 a_WS_EQ_1 a_WS_EQ_2 a_WS_EQ_3 a_WS_EQ_4

run_ber;
b_BH_CT_1 = BER_HRD_CT_1;   b_BH_EQ_1 = BER_HRD_EQ_1;      
b_BH_CT_2 = BER_HRD_CT_2;   b_BH_EQ_2 = BER_HRD_EQ_2;
b_BH_CT_3 = BER_HRD_CT_3;   b_BH_EQ_3 = BER_HRD_EQ_3;
b_BH_CT_4 = BER_HRD_CT_4;   b_BH_EQ_4 = BER_HRD_EQ_4;

b_BS_CT_1 = BER_SFT_CT_1;   b_BS_EQ_1 = BER_SFT_EQ_1;      
b_BS_CT_2 = BER_SFT_CT_2;   b_BS_EQ_2 = BER_SFT_EQ_2;
b_BS_CT_3 = BER_SFT_CT_3;   b_BS_EQ_3 = BER_SFT_EQ_3;
b_BS_CT_4 = BER_SFT_CT_4;   b_BS_EQ_4 = BER_SFT_EQ_4;

b_WH_CT_1 = WER_HRD_CT_1;   b_WH_EQ_1 = WER_HRD_EQ_1;      
b_WH_CT_2 = WER_HRD_CT_2;   b_WH_EQ_2 = WER_HRD_EQ_2;
b_WH_CT_3 = WER_HRD_CT_3;   b_WH_EQ_3 = WER_HRD_EQ_3;
b_WH_CT_4 = WER_HRD_CT_4;   b_WH_EQ_4 = WER_HRD_EQ_4;

b_WS_CT_1 = WER_SFT_CT_1;   b_WS_EQ_1 = WER_SFT_EQ_1;      
b_WS_CT_2 = WER_SFT_CT_2;   b_WS_EQ_2 = WER_SFT_EQ_2;
b_WS_CT_3 = WER_SFT_CT_3;   b_WS_EQ_3 = WER_SFT_EQ_3;
b_WS_CT_4 = WER_SFT_CT_4;   b_WS_EQ_4 = WER_SFT_EQ_4;
save results_b.mat b_BH_CT_1 b_BH_CT_2 b_BH_CT_3 b_BH_CT_4 b_BH_EQ_1 b_BH_EQ_2 b_BH_EQ_3 b_BH_EQ_4 b_BS_CT_1 b_BS_CT_2 b_BS_CT_3 b_BS_CT_4 b_BS_EQ_1 b_BS_EQ_2 b_BS_EQ_3 b_BS_EQ_4 b_WH_CT_1 b_WH_CT_2 b_WH_CT_3 b_WH_CT_4 b_WH_EQ_1 b_WH_EQ_2 b_WH_EQ_3 b_WH_EQ_4 b_WS_CT_1 b_WS_CT_2 b_WS_CT_3 b_WS_CT_4 b_WS_EQ_1 b_WS_EQ_2 b_WS_EQ_3 b_WS_EQ_4

run_ber;
c_BH_CT_1 = BER_HRD_CT_1;   c_BH_EQ_1 = BER_HRD_EQ_1;      
c_BH_CT_2 = BER_HRD_CT_2;   c_BH_EQ_2 = BER_HRD_EQ_2;
c_BH_CT_3 = BER_HRD_CT_3;   c_BH_EQ_3 = BER_HRD_EQ_3;
c_BH_CT_4 = BER_HRD_CT_4;   c_BH_EQ_4 = BER_HRD_EQ_4;

c_BS_CT_1 = BER_SFT_CT_1;   c_BS_EQ_1 = BER_SFT_EQ_1;      
c_BS_CT_2 = BER_SFT_CT_2;   c_BS_EQ_2 = BER_SFT_EQ_2;
c_BS_CT_3 = BER_SFT_CT_3;   c_BS_EQ_3 = BER_SFT_EQ_3;
c_BS_CT_4 = BER_SFT_CT_4;   c_BS_EQ_4 = BER_SFT_EQ_4;

c_WH_CT_1 = WER_HRD_CT_1;   c_WH_EQ_1 = WER_HRD_EQ_1;      
c_WH_CT_2 = WER_HRD_CT_2;   c_WH_EQ_2 = WER_HRD_EQ_2;
c_WH_CT_3 = WER_HRD_CT_3;   c_WH_EQ_3 = WER_HRD_EQ_3;
c_WH_CT_4 = WER_HRD_CT_4;   c_WH_EQ_4 = WER_HRD_EQ_4;

c_WS_CT_1 = WER_SFT_CT_1;   c_WS_EQ_1 = WER_SFT_EQ_1;      
c_WS_CT_2 = WER_SFT_CT_2;   c_WS_EQ_2 = WER_SFT_EQ_2;
c_WS_CT_3 = WER_SFT_CT_3;   c_WS_EQ_3 = WER_SFT_EQ_3;
c_WS_CT_4 = WER_SFT_CT_4;   c_WS_EQ_4 = WER_SFT_EQ_4;
save results_c.mat c_BH_CT_1 c_BH_CT_2 c_BH_CT_3 c_BH_CT_4 c_BH_EQ_1 c_BH_EQ_2 c_BH_EQ_3 c_BH_EQ_4 c_BS_CT_1 c_BS_CT_2 c_BS_CT_3 c_BS_CT_4 c_BS_EQ_1 c_BS_EQ_2 c_BS_EQ_3 c_BS_EQ_4 c_WH_CT_1 c_WH_CT_2 c_WH_CT_3 c_WH_CT_4 c_WH_EQ_1 c_WH_EQ_2 c_WH_EQ_3 c_WH_EQ_4 c_WS_CT_1 c_WS_CT_2 c_WS_CT_3 c_WS_CT_4 c_WS_EQ_1 c_WS_EQ_2 c_WS_EQ_3 c_WS_EQ_4

run_ber;
d_BH_CT_1 = BER_HRD_CT_1;   d_BH_EQ_1 = BER_HRD_EQ_1;      
d_BH_CT_2 = BER_HRD_CT_2;   d_BH_EQ_2 = BER_HRD_EQ_2;
d_BH_CT_3 = BER_HRD_CT_3;   d_BH_EQ_3 = BER_HRD_EQ_3;
d_BH_CT_4 = BER_HRD_CT_4;   d_BH_EQ_4 = BER_HRD_EQ_4;

d_BS_CT_1 = BER_SFT_CT_1;   d_BS_EQ_1 = BER_SFT_EQ_1;      
d_BS_CT_2 = BER_SFT_CT_2;   d_BS_EQ_2 = BER_SFT_EQ_2;
d_BS_CT_3 = BER_SFT_CT_3;   d_BS_EQ_3 = BER_SFT_EQ_3;
d_BS_CT_4 = BER_SFT_CT_4;   d_BS_EQ_4 = BER_SFT_EQ_4;

d_WH_CT_1 = WER_HRD_CT_1;   d_WH_EQ_1 = WER_HRD_EQ_1;      
d_WH_CT_2 = WER_HRD_CT_2;   d_WH_EQ_2 = WER_HRD_EQ_2;
d_WH_CT_3 = WER_HRD_CT_3;   d_WH_EQ_3 = WER_HRD_EQ_3;
d_WH_CT_4 = WER_HRD_CT_4;   d_WH_EQ_4 = WER_HRD_EQ_4;

d_WS_CT_1 = WER_SFT_CT_1;   d_WS_EQ_1 = WER_SFT_EQ_1;      
d_WS_CT_2 = WER_SFT_CT_2;   d_WS_EQ_2 = WER_SFT_EQ_2;
d_WS_CT_3 = WER_SFT_CT_3;   d_WS_EQ_3 = WER_SFT_EQ_3;
d_WS_CT_4 = WER_SFT_CT_4;   d_WS_EQ_4 = WER_SFT_EQ_4;
save results_d.mat d_BH_CT_1 d_BH_CT_2 d_BH_CT_3 d_BH_CT_4 d_BH_EQ_1 d_BH_EQ_2 d_BH_EQ_3 d_BH_EQ_4 d_BS_CT_1 d_BS_CT_2 d_BS_CT_3 d_BS_CT_4 d_BS_EQ_1 d_BS_EQ_2 d_BS_EQ_3 d_BS_EQ_4 d_WH_CT_1 d_WH_CT_2 d_WH_CT_3 d_WH_CT_4 d_WH_EQ_1 d_WH_EQ_2 d_WH_EQ_3 d_WH_EQ_4 d_WS_CT_1 d_WS_CT_2 d_WS_CT_3 d_WS_CT_4 d_WS_EQ_1 d_WS_EQ_2 d_WS_EQ_3 d_WS_EQ_4

run_ber;
e_BH_CT_1 = BER_HRD_CT_1;   e_BH_EQ_1 = BER_HRD_EQ_1;      
e_BH_CT_2 = BER_HRD_CT_2;   e_BH_EQ_2 = BER_HRD_EQ_2;
e_BH_CT_3 = BER_HRD_CT_3;   e_BH_EQ_3 = BER_HRD_EQ_3;
e_BH_CT_4 = BER_HRD_CT_4;   e_BH_EQ_4 = BER_HRD_EQ_4;

e_BS_CT_1 = BER_SFT_CT_1;   e_BS_EQ_1 = BER_SFT_EQ_1;      
e_BS_CT_2 = BER_SFT_CT_2;   e_BS_EQ_2 = BER_SFT_EQ_2;
e_BS_CT_3 = BER_SFT_CT_3;   e_BS_EQ_3 = BER_SFT_EQ_3;
e_BS_CT_4 = BER_SFT_CT_4;   e_BS_EQ_4 = BER_SFT_EQ_4;

e_WH_CT_1 = WER_HRD_CT_1;   e_WH_EQ_1 = WER_HRD_EQ_1;      
e_WH_CT_2 = WER_HRD_CT_2;   e_WH_EQ_2 = WER_HRD_EQ_2;
e_WH_CT_3 = WER_HRD_CT_3;   e_WH_EQ_3 = WER_HRD_EQ_3;
e_WH_CT_4 = WER_HRD_CT_4;   e_WH_EQ_4 = WER_HRD_EQ_4;

e_WS_CT_1 = WER_SFT_CT_1;   e_WS_EQ_1 = WER_SFT_EQ_1;      
e_WS_CT_2 = WER_SFT_CT_2;   e_WS_EQ_2 = WER_SFT_EQ_2;
e_WS_CT_3 = WER_SFT_CT_3;   e_WS_EQ_3 = WER_SFT_EQ_3;
e_WS_CT_4 = WER_SFT_CT_4;   e_WS_EQ_4 = WER_SFT_EQ_4;
save results_e.mat e_BH_CT_1 e_BH_CT_2 e_BH_CT_3 e_BH_CT_4 e_BH_EQ_1 e_BH_EQ_2 e_BH_EQ_3 e_BH_EQ_4 e_BS_CT_1 e_BS_CT_2 e_BS_CT_3 e_BS_CT_4 e_BS_EQ_1 e_BS_EQ_2 e_BS_EQ_3 e_BS_EQ_4 e_WH_CT_1 e_WH_CT_2 e_WH_CT_3 e_WH_CT_4 e_WH_EQ_1 e_WH_EQ_2 e_WH_EQ_3 e_WH_EQ_4 e_WS_CT_1 e_WS_CT_2 e_WS_CT_3 e_WS_CT_4 e_WS_EQ_1 e_WS_EQ_2 e_WS_EQ_3 e_WS_EQ_4

run_ber;
f_BH_CT_1 = BER_HRD_CT_1;   f_BH_EQ_1 = BER_HRD_EQ_1;      
f_BH_CT_2 = BER_HRD_CT_2;   f_BH_EQ_2 = BER_HRD_EQ_2;
f_BH_CT_3 = BER_HRD_CT_3;   f_BH_EQ_3 = BER_HRD_EQ_3;
f_BH_CT_4 = BER_HRD_CT_4;   f_BH_EQ_4 = BER_HRD_EQ_4;

f_BS_CT_1 = BER_SFT_CT_1;   f_BS_EQ_1 = BER_SFT_EQ_1;      
f_BS_CT_2 = BER_SFT_CT_2;   f_BS_EQ_2 = BER_SFT_EQ_2;
f_BS_CT_3 = BER_SFT_CT_3;   f_BS_EQ_3 = BER_SFT_EQ_3;
f_BS_CT_4 = BER_SFT_CT_4;   f_BS_EQ_4 = BER_SFT_EQ_4;

f_WH_CT_1 = WER_HRD_CT_1;   f_WH_EQ_1 = WER_HRD_EQ_1;      
f_WH_CT_2 = WER_HRD_CT_2;   f_WH_EQ_2 = WER_HRD_EQ_2;
f_WH_CT_3 = WER_HRD_CT_3;   f_WH_EQ_3 = WER_HRD_EQ_3;
f_WH_CT_4 = WER_HRD_CT_4;   f_WH_EQ_4 = WER_HRD_EQ_4;

f_WS_CT_1 = WER_SFT_CT_1;   f_WS_EQ_1 = WER_SFT_EQ_1;      
f_WS_CT_2 = WER_SFT_CT_2;   f_WS_EQ_2 = WER_SFT_EQ_2;
f_WS_CT_3 = WER_SFT_CT_3;   f_WS_EQ_3 = WER_SFT_EQ_3;
f_WS_CT_4 = WER_SFT_CT_4;   f_WS_EQ_4 = WER_SFT_EQ_4;
save results_f.mat f_BH_CT_1 f_BH_CT_2 f_BH_CT_3 f_BH_CT_4 f_BH_EQ_1 f_BH_EQ_2 f_BH_EQ_3 f_BH_EQ_4 f_BS_CT_1 f_BS_CT_2 f_BS_CT_3 f_BS_CT_4 f_BS_EQ_1 f_BS_EQ_2 f_BS_EQ_3 f_BS_EQ_4 f_WH_CT_1 f_WH_CT_2 f_WH_CT_3 f_WH_CT_4 f_WH_EQ_1 f_WH_EQ_2 f_WH_EQ_3 f_WH_EQ_4 f_WS_CT_1 f_WS_CT_2 f_WS_CT_3 f_WS_CT_4 f_WS_EQ_1 f_WS_EQ_2 f_WS_EQ_3 f_WS_EQ_4

run_ber;
g_BH_CT_1 = BER_HRD_CT_1;   g_BH_EQ_1 = BER_HRD_EQ_1;      
g_BH_CT_2 = BER_HRD_CT_2;   g_BH_EQ_2 = BER_HRD_EQ_2;
g_BH_CT_3 = BER_HRD_CT_3;   g_BH_EQ_3 = BER_HRD_EQ_3;
g_BH_CT_4 = BER_HRD_CT_4;   g_BH_EQ_4 = BER_HRD_EQ_4;

g_BS_CT_1 = BER_SFT_CT_1;   g_BS_EQ_1 = BER_SFT_EQ_1;      
g_BS_CT_2 = BER_SFT_CT_2;   g_BS_EQ_2 = BER_SFT_EQ_2;
g_BS_CT_3 = BER_SFT_CT_3;   g_BS_EQ_3 = BER_SFT_EQ_3;
g_BS_CT_4 = BER_SFT_CT_4;   g_BS_EQ_4 = BER_SFT_EQ_4;

g_WH_CT_1 = WER_HRD_CT_1;   g_WH_EQ_1 = WER_HRD_EQ_1;      
g_WH_CT_2 = WER_HRD_CT_2;   g_WH_EQ_2 = WER_HRD_EQ_2;
g_WH_CT_3 = WER_HRD_CT_3;   g_WH_EQ_3 = WER_HRD_EQ_3;
g_WH_CT_4 = WER_HRD_CT_4;   g_WH_EQ_4 = WER_HRD_EQ_4;

g_WS_CT_1 = WER_SFT_CT_1;   g_WS_EQ_1 = WER_SFT_EQ_1;      
g_WS_CT_2 = WER_SFT_CT_2;   g_WS_EQ_2 = WER_SFT_EQ_2;
g_WS_CT_3 = WER_SFT_CT_3;   g_WS_EQ_3 = WER_SFT_EQ_3;
g_WS_CT_4 = WER_SFT_CT_4;   g_WS_EQ_4 = WER_SFT_EQ_4;
save results_g.mat g_BH_CT_1 g_BH_CT_2 g_BH_CT_3 g_BH_CT_4 g_BH_EQ_1 g_BH_EQ_2 g_BH_EQ_3 g_BH_EQ_4 g_BS_CT_1 g_BS_CT_2 g_BS_CT_3 g_BS_CT_4 g_BS_EQ_1 g_BS_EQ_2 g_BS_EQ_3 g_BS_EQ_4 g_WH_CT_1 g_WH_CT_2 g_WH_CT_3 g_WH_CT_4 g_WH_EQ_1 g_WH_EQ_2 g_WH_EQ_3 g_WH_EQ_4 g_WS_CT_1 g_WS_CT_2 g_WS_CT_3 g_WS_CT_4 g_WS_EQ_1 g_WS_EQ_2 g_WS_EQ_3 g_WS_EQ_4

run_ber;
h_BH_CT_1 = BER_HRD_CT_1;   h_BH_EQ_1 = BER_HRD_EQ_1;      
h_BH_CT_2 = BER_HRD_CT_2;   h_BH_EQ_2 = BER_HRD_EQ_2;
h_BH_CT_3 = BER_HRD_CT_3;   h_BH_EQ_3 = BER_HRD_EQ_3;
h_BH_CT_4 = BER_HRD_CT_4;   h_BH_EQ_4 = BER_HRD_EQ_4;

h_BS_CT_1 = BER_SFT_CT_1;   h_BS_EQ_1 = BER_SFT_EQ_1;      
h_BS_CT_2 = BER_SFT_CT_2;   h_BS_EQ_2 = BER_SFT_EQ_2;
h_BS_CT_3 = BER_SFT_CT_3;   h_BS_EQ_3 = BER_SFT_EQ_3;
h_BS_CT_4 = BER_SFT_CT_4;   h_BS_EQ_4 = BER_SFT_EQ_4;

h_WH_CT_1 = WER_HRD_CT_1;   h_WH_EQ_1 = WER_HRD_EQ_1;      
h_WH_CT_2 = WER_HRD_CT_2;   h_WH_EQ_2 = WER_HRD_EQ_2;
h_WH_CT_3 = WER_HRD_CT_3;   h_WH_EQ_3 = WER_HRD_EQ_3;
h_WH_CT_4 = WER_HRD_CT_4;   h_WH_EQ_4 = WER_HRD_EQ_4;

h_WS_CT_1 = WER_SFT_CT_1;   h_WS_EQ_1 = WER_SFT_EQ_1;      
h_WS_CT_2 = WER_SFT_CT_2;   h_WS_EQ_2 = WER_SFT_EQ_2;
h_WS_CT_3 = WER_SFT_CT_3;   h_WS_EQ_3 = WER_SFT_EQ_3;
h_WS_CT_4 = WER_SFT_CT_4;   h_WS_EQ_4 = WER_SFT_EQ_4;
save results_h.mat h_BH_CT_1 h_BH_CT_2 h_BH_CT_3 h_BH_CT_4 h_BH_EQ_1 h_BH_EQ_2 h_BH_EQ_3 h_BH_EQ_4 h_BS_CT_1 h_BS_CT_2 h_BS_CT_3 h_BS_CT_4 h_BS_EQ_1 h_BS_EQ_2 h_BS_EQ_3 h_BS_EQ_4 h_WH_CT_1 h_WH_CT_2 h_WH_CT_3 h_WH_CT_4 h_WH_EQ_1 h_WH_EQ_2 h_WH_EQ_3 h_WH_EQ_4 h_WS_CT_1 h_WS_CT_2 h_WS_CT_3 h_WS_CT_4 h_WS_EQ_1 h_WS_EQ_2 h_WS_EQ_3 h_WS_EQ_4

run_ber;
i_BH_CT_1 = BER_HRD_CT_1;   i_BH_EQ_1 = BER_HRD_EQ_1;      
i_BH_CT_2 = BER_HRD_CT_2;   i_BH_EQ_2 = BER_HRD_EQ_2;
i_BH_CT_3 = BER_HRD_CT_3;   i_BH_EQ_3 = BER_HRD_EQ_3;
i_BH_CT_4 = BER_HRD_CT_4;   i_BH_EQ_4 = BER_HRD_EQ_4;

i_BS_CT_1 = BER_SFT_CT_1;   i_BS_EQ_1 = BER_SFT_EQ_1;      
i_BS_CT_2 = BER_SFT_CT_2;   i_BS_EQ_2 = BER_SFT_EQ_2;
i_BS_CT_3 = BER_SFT_CT_3;   i_BS_EQ_3 = BER_SFT_EQ_3;
i_BS_CT_4 = BER_SFT_CT_4;   i_BS_EQ_4 = BER_SFT_EQ_4;

i_WH_CT_1 = WER_HRD_CT_1;   i_WH_EQ_1 = WER_HRD_EQ_1;      
i_WH_CT_2 = WER_HRD_CT_2;   i_WH_EQ_2 = WER_HRD_EQ_2;
i_WH_CT_3 = WER_HRD_CT_3;   i_WH_EQ_3 = WER_HRD_EQ_3;
i_WH_CT_4 = WER_HRD_CT_4;   i_WH_EQ_4 = WER_HRD_EQ_4;

i_WS_CT_1 = WER_SFT_CT_1;   i_WS_EQ_1 = WER_SFT_EQ_1;      
i_WS_CT_2 = WER_SFT_CT_2;   i_WS_EQ_2 = WER_SFT_EQ_2;
i_WS_CT_3 = WER_SFT_CT_3;   i_WS_EQ_3 = WER_SFT_EQ_3;
i_WS_CT_4 = WER_SFT_CT_4;   i_WS_EQ_4 = WER_SFT_EQ_4;
save results_i.mat i_BH_CT_1 i_BH_CT_2 i_BH_CT_3 i_BH_CT_4 i_BH_EQ_1 i_BH_EQ_2 i_BH_EQ_3 i_BH_EQ_4 i_BS_CT_1 i_BS_CT_2 i_BS_CT_3 i_BS_CT_4 i_BS_EQ_1 i_BS_EQ_2 i_BS_EQ_3 i_BS_EQ_4 i_WH_CT_1 i_WH_CT_2 i_WH_CT_3 i_WH_CT_4 i_WH_EQ_1 i_WH_EQ_2 i_WH_EQ_3 i_WH_EQ_4 i_WS_CT_1 i_WS_CT_2 i_WS_CT_3 i_WS_CT_4 i_WS_EQ_1 i_WS_EQ_2 i_WS_EQ_3 i_WS_EQ_4

run_ber;
j_BH_CT_1 = BER_HRD_CT_1;   j_BH_EQ_1 = BER_HRD_EQ_1;      
j_BH_CT_2 = BER_HRD_CT_2;   j_BH_EQ_2 = BER_HRD_EQ_2;
j_BH_CT_3 = BER_HRD_CT_3;   j_BH_EQ_3 = BER_HRD_EQ_3;
j_BH_CT_4 = BER_HRD_CT_4;   j_BH_EQ_4 = BER_HRD_EQ_4;

j_BS_CT_1 = BER_SFT_CT_1;   j_BS_EQ_1 = BER_SFT_EQ_1;      
j_BS_CT_2 = BER_SFT_CT_2;   j_BS_EQ_2 = BER_SFT_EQ_2;
j_BS_CT_3 = BER_SFT_CT_3;   j_BS_EQ_3 = BER_SFT_EQ_3;
j_BS_CT_4 = BER_SFT_CT_4;   j_BS_EQ_4 = BER_SFT_EQ_4;

j_WH_CT_1 = WER_HRD_CT_1;   j_WH_EQ_1 = WER_HRD_EQ_1;      
j_WH_CT_2 = WER_HRD_CT_2;   j_WH_EQ_2 = WER_HRD_EQ_2;
j_WH_CT_3 = WER_HRD_CT_3;   j_WH_EQ_3 = WER_HRD_EQ_3;
j_WH_CT_4 = WER_HRD_CT_4;   j_WH_EQ_4 = WER_HRD_EQ_4;

j_WS_CT_1 = WER_SFT_CT_1;   j_WS_EQ_1 = WER_SFT_EQ_1;      
j_WS_CT_2 = WER_SFT_CT_2;   j_WS_EQ_2 = WER_SFT_EQ_2;
j_WS_CT_3 = WER_SFT_CT_3;   j_WS_EQ_3 = WER_SFT_EQ_3;
j_WS_CT_4 = WER_SFT_CT_4;   j_WS_EQ_4 = WER_SFT_EQ_4;
save results_j.mat j_BH_CT_1 j_BH_CT_2 j_BH_CT_3 j_BH_CT_4 j_BH_EQ_1 j_BH_EQ_2 j_BH_EQ_3 j_BH_EQ_4 j_BS_CT_1 j_BS_CT_2 j_BS_CT_3 j_BS_CT_4 j_BS_EQ_1 j_BS_EQ_2 j_BS_EQ_3 j_BS_EQ_4 j_WH_CT_1 j_WH_CT_2 j_WH_CT_3 j_WH_CT_4 j_WH_EQ_1 j_WH_EQ_2 j_WH_EQ_3 j_WH_EQ_4 j_WS_CT_1 j_WS_CT_2 j_WS_CT_3 j_WS_CT_4 j_WS_EQ_1 j_WS_EQ_2 j_WS_EQ_3 j_WS_EQ_4

run_ber;
k_BH_CT_1 = BER_HRD_CT_1;   k_BH_EQ_1 = BER_HRD_EQ_1;      
k_BH_CT_2 = BER_HRD_CT_2;   k_BH_EQ_2 = BER_HRD_EQ_2;
k_BH_CT_3 = BER_HRD_CT_3;   k_BH_EQ_3 = BER_HRD_EQ_3;
k_BH_CT_4 = BER_HRD_CT_4;   k_BH_EQ_4 = BER_HRD_EQ_4;

k_BS_CT_1 = BER_SFT_CT_1;   k_BS_EQ_1 = BER_SFT_EQ_1;      
k_BS_CT_2 = BER_SFT_CT_2;   k_BS_EQ_2 = BER_SFT_EQ_2;
k_BS_CT_3 = BER_SFT_CT_3;   k_BS_EQ_3 = BER_SFT_EQ_3;
k_BS_CT_4 = BER_SFT_CT_4;   k_BS_EQ_4 = BER_SFT_EQ_4;

k_WH_CT_1 = WER_HRD_CT_1;   k_WH_EQ_1 = WER_HRD_EQ_1;      
k_WH_CT_2 = WER_HRD_CT_2;   k_WH_EQ_2 = WER_HRD_EQ_2;
k_WH_CT_3 = WER_HRD_CT_3;   k_WH_EQ_3 = WER_HRD_EQ_3;
k_WH_CT_4 = WER_HRD_CT_4;   k_WH_EQ_4 = WER_HRD_EQ_4;

k_WS_CT_1 = WER_SFT_CT_1;   k_WS_EQ_1 = WER_SFT_EQ_1;      
k_WS_CT_2 = WER_SFT_CT_2;   k_WS_EQ_2 = WER_SFT_EQ_2;
k_WS_CT_3 = WER_SFT_CT_3;   k_WS_EQ_3 = WER_SFT_EQ_3;
k_WS_CT_4 = WER_SFT_CT_4;   k_WS_EQ_4 = WER_SFT_EQ_4;
save results_k.mat k_BH_CT_1 k_BH_CT_2 k_BH_CT_3 k_BH_CT_4 k_BH_EQ_1 k_BH_EQ_2 k_BH_EQ_3 k_BH_EQ_4 k_BS_CT_1 k_BS_CT_2 k_BS_CT_3 k_BS_CT_4 k_BS_EQ_1 k_BS_EQ_2 k_BS_EQ_3 k_BS_EQ_4 k_WH_CT_1 k_WH_CT_2 k_WH_CT_3 k_WH_CT_4 k_WH_EQ_1 k_WH_EQ_2 k_WH_EQ_3 k_WH_EQ_4 k_WS_CT_1 k_WS_CT_2 k_WS_CT_3 k_WS_CT_4 k_WS_EQ_1 k_WS_EQ_2 k_WS_EQ_3 k_WS_EQ_4

run_ber;
l_BH_CT_1 = BER_HRD_CT_1;   l_BH_EQ_1 = BER_HRD_EQ_1;      
l_BH_CT_2 = BER_HRD_CT_2;   l_BH_EQ_2 = BER_HRD_EQ_2;
l_BH_CT_3 = BER_HRD_CT_3;   l_BH_EQ_3 = BER_HRD_EQ_3;
l_BH_CT_4 = BER_HRD_CT_4;   l_BH_EQ_4 = BER_HRD_EQ_4;

l_BS_CT_1 = BER_SFT_CT_1;   l_BS_EQ_1 = BER_SFT_EQ_1;      
l_BS_CT_2 = BER_SFT_CT_2;   l_BS_EQ_2 = BER_SFT_EQ_2;
l_BS_CT_3 = BER_SFT_CT_3;   l_BS_EQ_3 = BER_SFT_EQ_3;
l_BS_CT_4 = BER_SFT_CT_4;   l_BS_EQ_4 = BER_SFT_EQ_4;

l_WH_CT_1 = WER_HRD_CT_1;   l_WH_EQ_1 = WER_HRD_EQ_1;      
l_WH_CT_2 = WER_HRD_CT_2;   l_WH_EQ_2 = WER_HRD_EQ_2;
l_WH_CT_3 = WER_HRD_CT_3;   l_WH_EQ_3 = WER_HRD_EQ_3;
l_WH_CT_4 = WER_HRD_CT_4;   l_WH_EQ_4 = WER_HRD_EQ_4;

l_WS_CT_1 = WER_SFT_CT_1;   l_WS_EQ_1 = WER_SFT_EQ_1;      
l_WS_CT_2 = WER_SFT_CT_2;   l_WS_EQ_2 = WER_SFT_EQ_2;
l_WS_CT_3 = WER_SFT_CT_3;   l_WS_EQ_3 = WER_SFT_EQ_3;
l_WS_CT_4 = WER_SFT_CT_4;   l_WS_EQ_4 = WER_SFT_EQ_4;
save results_l.mat l_BH_CT_1 l_BH_CT_2 l_BH_CT_3 l_BH_CT_4 l_BH_EQ_1 l_BH_EQ_2 l_BH_EQ_3 l_BH_EQ_4 l_BS_CT_1 l_BS_CT_2 l_BS_CT_3 l_BS_CT_4 l_BS_EQ_1 l_BS_EQ_2 l_BS_EQ_3 l_BS_EQ_4 l_WH_CT_1 l_WH_CT_2 l_WH_CT_3 l_WH_CT_4 l_WH_EQ_1 l_WH_EQ_2 l_WH_EQ_3 l_WH_EQ_4 l_WS_CT_1 l_WS_CT_2 l_WS_CT_3 l_WS_CT_4 l_WS_EQ_1 l_WS_EQ_2 l_WS_EQ_3 l_WS_EQ_4

run_ber;
m_BH_CT_1 = BER_HRD_CT_1;   m_BH_EQ_1 = BER_HRD_EQ_1;      
m_BH_CT_2 = BER_HRD_CT_2;   m_BH_EQ_2 = BER_HRD_EQ_2;
m_BH_CT_3 = BER_HRD_CT_3;   m_BH_EQ_3 = BER_HRD_EQ_3;
m_BH_CT_4 = BER_HRD_CT_4;   m_BH_EQ_4 = BER_HRD_EQ_4;

m_BS_CT_1 = BER_SFT_CT_1;   m_BS_EQ_1 = BER_SFT_EQ_1;      
m_BS_CT_2 = BER_SFT_CT_2;   m_BS_EQ_2 = BER_SFT_EQ_2;
m_BS_CT_3 = BER_SFT_CT_3;   m_BS_EQ_3 = BER_SFT_EQ_3;
m_BS_CT_4 = BER_SFT_CT_4;   m_BS_EQ_4 = BER_SFT_EQ_4;

m_WH_CT_1 = WER_HRD_CT_1;   m_WH_EQ_1 = WER_HRD_EQ_1;      
m_WH_CT_2 = WER_HRD_CT_2;   m_WH_EQ_2 = WER_HRD_EQ_2;
m_WH_CT_3 = WER_HRD_CT_3;   m_WH_EQ_3 = WER_HRD_EQ_3;
m_WH_CT_4 = WER_HRD_CT_4;   m_WH_EQ_4 = WER_HRD_EQ_4;

m_WS_CT_1 = WER_SFT_CT_1;   m_WS_EQ_1 = WER_SFT_EQ_1;      
m_WS_CT_2 = WER_SFT_CT_2;   m_WS_EQ_2 = WER_SFT_EQ_2;
m_WS_CT_3 = WER_SFT_CT_3;   m_WS_EQ_3 = WER_SFT_EQ_3;
m_WS_CT_4 = WER_SFT_CT_4;   m_WS_EQ_4 = WER_SFT_EQ_4;
save results_m.mat m_BH_CT_1 m_BH_CT_2 m_BH_CT_3 m_BH_CT_4 m_BH_EQ_1 m_BH_EQ_2 m_BH_EQ_3 m_BH_EQ_4 m_BS_CT_1 m_BS_CT_2 m_BS_CT_3 m_BS_CT_4 m_BS_EQ_1 m_BS_EQ_2 m_BS_EQ_3 m_BS_EQ_4 m_WH_CT_1 m_WH_CT_2 m_WH_CT_3 m_WH_CT_4 m_WH_EQ_1 m_WH_EQ_2 m_WH_EQ_3 m_WH_EQ_4 m_WS_CT_1 m_WS_CT_2 m_WS_CT_3 m_WS_CT_4 m_WS_EQ_1 m_WS_EQ_2 m_WS_EQ_3 m_WS_EQ_4

run_ber;
n_BH_CT_1 = BER_HRD_CT_1;   n_BH_EQ_1 = BER_HRD_EQ_1;      
n_BH_CT_2 = BER_HRD_CT_2;   n_BH_EQ_2 = BER_HRD_EQ_2;
n_BH_CT_3 = BER_HRD_CT_3;   n_BH_EQ_3 = BER_HRD_EQ_3;
n_BH_CT_4 = BER_HRD_CT_4;   n_BH_EQ_4 = BER_HRD_EQ_4;

n_BS_CT_1 = BER_SFT_CT_1;   n_BS_EQ_1 = BER_SFT_EQ_1;      
n_BS_CT_2 = BER_SFT_CT_2;   n_BS_EQ_2 = BER_SFT_EQ_2;
n_BS_CT_3 = BER_SFT_CT_3;   n_BS_EQ_3 = BER_SFT_EQ_3;
n_BS_CT_4 = BER_SFT_CT_4;   n_BS_EQ_4 = BER_SFT_EQ_4;

n_WH_CT_1 = WER_HRD_CT_1;   n_WH_EQ_1 = WER_HRD_EQ_1;      
n_WH_CT_2 = WER_HRD_CT_2;   n_WH_EQ_2 = WER_HRD_EQ_2;
n_WH_CT_3 = WER_HRD_CT_3;   n_WH_EQ_3 = WER_HRD_EQ_3;
n_WH_CT_4 = WER_HRD_CT_4;   n_WH_EQ_4 = WER_HRD_EQ_4;

n_WS_CT_1 = WER_SFT_CT_1;   n_WS_EQ_1 = WER_SFT_EQ_1;      
n_WS_CT_2 = WER_SFT_CT_2;   n_WS_EQ_2 = WER_SFT_EQ_2;
n_WS_CT_3 = WER_SFT_CT_3;   n_WS_EQ_3 = WER_SFT_EQ_3;
n_WS_CT_4 = WER_SFT_CT_4;   n_WS_EQ_4 = WER_SFT_EQ_4;
save results_n.mat n_BH_CT_1 n_BH_CT_2 n_BH_CT_3 n_BH_CT_4 n_BH_EQ_1 n_BH_EQ_2 n_BH_EQ_3 n_BH_EQ_4 n_BS_CT_1 n_BS_CT_2 n_BS_CT_3 n_BS_CT_4 n_BS_EQ_1 n_BS_EQ_2 n_BS_EQ_3 n_BS_EQ_4 n_WH_CT_1 n_WH_CT_2 n_WH_CT_3 n_WH_CT_4 n_WH_EQ_1 n_WH_EQ_2 n_WH_EQ_3 n_WH_EQ_4 n_WS_CT_1 n_WS_CT_2 n_WS_CT_3 n_WS_CT_4 n_WS_EQ_1 n_WS_EQ_2 n_WS_EQ_3 n_WS_EQ_4

run_ber;
o_BH_CT_1 = BER_HRD_CT_1;   o_BH_EQ_1 = BER_HRD_EQ_1;      
o_BH_CT_2 = BER_HRD_CT_2;   o_BH_EQ_2 = BER_HRD_EQ_2;
o_BH_CT_3 = BER_HRD_CT_3;   o_BH_EQ_3 = BER_HRD_EQ_3;
o_BH_CT_4 = BER_HRD_CT_4;   o_BH_EQ_4 = BER_HRD_EQ_4;

o_BS_CT_1 = BER_SFT_CT_1;   o_BS_EQ_1 = BER_SFT_EQ_1;      
o_BS_CT_2 = BER_SFT_CT_2;   o_BS_EQ_2 = BER_SFT_EQ_2;
o_BS_CT_3 = BER_SFT_CT_3;   o_BS_EQ_3 = BER_SFT_EQ_3;
o_BS_CT_4 = BER_SFT_CT_4;   o_BS_EQ_4 = BER_SFT_EQ_4;

o_WH_CT_1 = WER_HRD_CT_1;   o_WH_EQ_1 = WER_HRD_EQ_1;      
o_WH_CT_2 = WER_HRD_CT_2;   o_WH_EQ_2 = WER_HRD_EQ_2;
o_WH_CT_3 = WER_HRD_CT_3;   o_WH_EQ_3 = WER_HRD_EQ_3;
o_WH_CT_4 = WER_HRD_CT_4;   o_WH_EQ_4 = WER_HRD_EQ_4;

o_WS_CT_1 = WER_SFT_CT_1;   o_WS_EQ_1 = WER_SFT_EQ_1;      
o_WS_CT_2 = WER_SFT_CT_2;   o_WS_EQ_2 = WER_SFT_EQ_2;
o_WS_CT_3 = WER_SFT_CT_3;   o_WS_EQ_3 = WER_SFT_EQ_3;
o_WS_CT_4 = WER_SFT_CT_4;   o_WS_EQ_4 = WER_SFT_EQ_4;
save results_o.mat o_BH_CT_1 o_BH_CT_2 o_BH_CT_3 o_BH_CT_4 o_BH_EQ_1 o_BH_EQ_2 o_BH_EQ_3 o_BH_EQ_4 o_BS_CT_1 o_BS_CT_2 o_BS_CT_3 o_BS_CT_4 o_BS_EQ_1 o_BS_EQ_2 o_BS_EQ_3 o_BS_EQ_4 o_WH_CT_1 o_WH_CT_2 o_WH_CT_3 o_WH_CT_4 o_WH_EQ_1 o_WH_EQ_2 o_WH_EQ_3 o_WH_EQ_4 o_WS_CT_1 o_WS_CT_2 o_WS_CT_3 o_WS_CT_4 o_WS_EQ_1 o_WS_EQ_2 o_WS_EQ_3 o_WS_EQ_4

run_ber;
p_BH_CT_1 = BER_HRD_CT_1;   p_BH_EQ_1 = BER_HRD_EQ_1;      
p_BH_CT_2 = BER_HRD_CT_2;   p_BH_EQ_2 = BER_HRD_EQ_2;
p_BH_CT_3 = BER_HRD_CT_3;   p_BH_EQ_3 = BER_HRD_EQ_3;
p_BH_CT_4 = BER_HRD_CT_4;   p_BH_EQ_4 = BER_HRD_EQ_4;

p_BS_CT_1 = BER_SFT_CT_1;   p_BS_EQ_1 = BER_SFT_EQ_1;      
p_BS_CT_2 = BER_SFT_CT_2;   p_BS_EQ_2 = BER_SFT_EQ_2;
p_BS_CT_3 = BER_SFT_CT_3;   p_BS_EQ_3 = BER_SFT_EQ_3;
p_BS_CT_4 = BER_SFT_CT_4;   p_BS_EQ_4 = BER_SFT_EQ_4;

p_WH_CT_1 = WER_HRD_CT_1;   p_WH_EQ_1 = WER_HRD_EQ_1;      
p_WH_CT_2 = WER_HRD_CT_2;   p_WH_EQ_2 = WER_HRD_EQ_2;
p_WH_CT_3 = WER_HRD_CT_3;   p_WH_EQ_3 = WER_HRD_EQ_3;
p_WH_CT_4 = WER_HRD_CT_4;   p_WH_EQ_4 = WER_HRD_EQ_4;

p_WS_CT_1 = WER_SFT_CT_1;   p_WS_EQ_1 = WER_SFT_EQ_1;      
p_WS_CT_2 = WER_SFT_CT_2;   p_WS_EQ_2 = WER_SFT_EQ_2;
p_WS_CT_3 = WER_SFT_CT_3;   p_WS_EQ_3 = WER_SFT_EQ_3;
p_WS_CT_4 = WER_SFT_CT_4;   p_WS_EQ_4 = WER_SFT_EQ_4;
save results_p.mat p_BH_CT_1 p_BH_CT_2 p_BH_CT_3 p_BH_CT_4 p_BH_EQ_1 p_BH_EQ_2 p_BH_EQ_3 p_BH_EQ_4 p_BS_CT_1 p_BS_CT_2 p_BS_CT_3 p_BS_CT_4 p_BS_EQ_1 p_BS_EQ_2 p_BS_EQ_3 p_BS_EQ_4 p_WH_CT_1 p_WH_CT_2 p_WH_CT_3 p_WH_CT_4 p_WH_EQ_1 p_WH_EQ_2 p_WH_EQ_3 p_WH_EQ_4 p_WS_CT_1 p_WS_CT_2 p_WS_CT_3 p_WS_CT_4 p_WS_EQ_1 p_WS_EQ_2 p_WS_EQ_3 p_WS_EQ_4

run_ber;
q_BH_CT_1 = BER_HRD_CT_1;   q_BH_EQ_1 = BER_HRD_EQ_1;      
q_BH_CT_2 = BER_HRD_CT_2;   q_BH_EQ_2 = BER_HRD_EQ_2;
q_BH_CT_3 = BER_HRD_CT_3;   q_BH_EQ_3 = BER_HRD_EQ_3;
q_BH_CT_4 = BER_HRD_CT_4;   q_BH_EQ_4 = BER_HRD_EQ_4;

q_BS_CT_1 = BER_SFT_CT_1;   q_BS_EQ_1 = BER_SFT_EQ_1;      
q_BS_CT_2 = BER_SFT_CT_2;   q_BS_EQ_2 = BER_SFT_EQ_2;
q_BS_CT_3 = BER_SFT_CT_3;   q_BS_EQ_3 = BER_SFT_EQ_3;
q_BS_CT_4 = BER_SFT_CT_4;   q_BS_EQ_4 = BER_SFT_EQ_4;

q_WH_CT_1 = WER_HRD_CT_1;   q_WH_EQ_1 = WER_HRD_EQ_1;      
q_WH_CT_2 = WER_HRD_CT_2;   q_WH_EQ_2 = WER_HRD_EQ_2;
q_WH_CT_3 = WER_HRD_CT_3;   q_WH_EQ_3 = WER_HRD_EQ_3;
q_WH_CT_4 = WER_HRD_CT_4;   q_WH_EQ_4 = WER_HRD_EQ_4;

q_WS_CT_1 = WER_SFT_CT_1;   q_WS_EQ_1 = WER_SFT_EQ_1;      
q_WS_CT_2 = WER_SFT_CT_2;   q_WS_EQ_2 = WER_SFT_EQ_2;
q_WS_CT_3 = WER_SFT_CT_3;   q_WS_EQ_3 = WER_SFT_EQ_3;
q_WS_CT_4 = WER_SFT_CT_4;   q_WS_EQ_4 = WER_SFT_EQ_4;
save results_q.mat q_BH_CT_1 q_BH_CT_2 q_BH_CT_3 q_BH_CT_4 q_BH_EQ_1 q_BH_EQ_2 q_BH_EQ_3 q_BH_EQ_4 q_BS_CT_1 q_BS_CT_2 q_BS_CT_3 q_BS_CT_4 q_BS_EQ_1 q_BS_EQ_2 q_BS_EQ_3 q_BS_EQ_4 q_WH_CT_1 q_WH_CT_2 q_WH_CT_3 q_WH_CT_4 q_WH_EQ_1 q_WH_EQ_2 q_WH_EQ_3 q_WH_EQ_4 q_WS_CT_1 q_WS_CT_2 q_WS_CT_3 q_WS_CT_4 q_WS_EQ_1 q_WS_EQ_2 q_WS_EQ_3 q_WS_EQ_4

run_ber;
r_BH_CT_1 = BER_HRD_CT_1;   r_BH_EQ_1 = BER_HRD_EQ_1;      
r_BH_CT_2 = BER_HRD_CT_2;   r_BH_EQ_2 = BER_HRD_EQ_2;
r_BH_CT_3 = BER_HRD_CT_3;   r_BH_EQ_3 = BER_HRD_EQ_3;
r_BH_CT_4 = BER_HRD_CT_4;   r_BH_EQ_4 = BER_HRD_EQ_4;

r_BS_CT_1 = BER_SFT_CT_1;   r_BS_EQ_1 = BER_SFT_EQ_1;      
r_BS_CT_2 = BER_SFT_CT_2;   r_BS_EQ_2 = BER_SFT_EQ_2;
r_BS_CT_3 = BER_SFT_CT_3;   r_BS_EQ_3 = BER_SFT_EQ_3;
r_BS_CT_4 = BER_SFT_CT_4;   r_BS_EQ_4 = BER_SFT_EQ_4;

r_WH_CT_1 = WER_HRD_CT_1;   r_WH_EQ_1 = WER_HRD_EQ_1;      
r_WH_CT_2 = WER_HRD_CT_2;   r_WH_EQ_2 = WER_HRD_EQ_2;
r_WH_CT_3 = WER_HRD_CT_3;   r_WH_EQ_3 = WER_HRD_EQ_3;
r_WH_CT_4 = WER_HRD_CT_4;   r_WH_EQ_4 = WER_HRD_EQ_4;

r_WS_CT_1 = WER_SFT_CT_1;   r_WS_EQ_1 = WER_SFT_EQ_1;      
r_WS_CT_2 = WER_SFT_CT_2;   r_WS_EQ_2 = WER_SFT_EQ_2;
r_WS_CT_3 = WER_SFT_CT_3;   r_WS_EQ_3 = WER_SFT_EQ_3;
r_WS_CT_4 = WER_SFT_CT_4;   r_WS_EQ_4 = WER_SFT_EQ_4;
save results_r.mat r_BH_CT_1 r_BH_CT_2 r_BH_CT_3 r_BH_CT_4 r_BH_EQ_1 r_BH_EQ_2 r_BH_EQ_3 r_BH_EQ_4 r_BS_CT_1 r_BS_CT_2 r_BS_CT_3 r_BS_CT_4 r_BS_EQ_1 r_BS_EQ_2 r_BS_EQ_3 r_BS_EQ_4 r_WH_CT_1 r_WH_CT_2 r_WH_CT_3 r_WH_CT_4 r_WH_EQ_1 r_WH_EQ_2 r_WH_EQ_3 r_WH_EQ_4 r_WS_CT_1 r_WS_CT_2 r_WS_CT_3 r_WS_CT_4 r_WS_EQ_1 r_WS_EQ_2 r_WS_EQ_3 r_WS_EQ_4

run_ber;
s_BH_CT_1 = BER_HRD_CT_1;   s_BH_EQ_1 = BER_HRD_EQ_1;      
s_BH_CT_2 = BER_HRD_CT_2;   s_BH_EQ_2 = BER_HRD_EQ_2;
s_BH_CT_3 = BER_HRD_CT_3;   s_BH_EQ_3 = BER_HRD_EQ_3;
s_BH_CT_4 = BER_HRD_CT_4;   s_BH_EQ_4 = BER_HRD_EQ_4;

s_BS_CT_1 = BER_SFT_CT_1;   s_BS_EQ_1 = BER_SFT_EQ_1;      
s_BS_CT_2 = BER_SFT_CT_2;   s_BS_EQ_2 = BER_SFT_EQ_2;
s_BS_CT_3 = BER_SFT_CT_3;   s_BS_EQ_3 = BER_SFT_EQ_3;
s_BS_CT_4 = BER_SFT_CT_4;   s_BS_EQ_4 = BER_SFT_EQ_4;

s_WH_CT_1 = WER_HRD_CT_1;   s_WH_EQ_1 = WER_HRD_EQ_1;      
s_WH_CT_2 = WER_HRD_CT_2;   s_WH_EQ_2 = WER_HRD_EQ_2;
s_WH_CT_3 = WER_HRD_CT_3;   s_WH_EQ_3 = WER_HRD_EQ_3;
s_WH_CT_4 = WER_HRD_CT_4;   s_WH_EQ_4 = WER_HRD_EQ_4;

s_WS_CT_1 = WER_SFT_CT_1;   s_WS_EQ_1 = WER_SFT_EQ_1;      
s_WS_CT_2 = WER_SFT_CT_2;   s_WS_EQ_2 = WER_SFT_EQ_2;
s_WS_CT_3 = WER_SFT_CT_3;   s_WS_EQ_3 = WER_SFT_EQ_3;
s_WS_CT_4 = WER_SFT_CT_4;   s_WS_EQ_4 = WER_SFT_EQ_4;
save results_s.mat s_BH_CT_1 s_BH_CT_2 s_BH_CT_3 s_BH_CT_4 s_BH_EQ_1 s_BH_EQ_2 s_BH_EQ_3 s_BH_EQ_4 s_BS_CT_1 s_BS_CT_2 s_BS_CT_3 s_BS_CT_4 s_BS_EQ_1 s_BS_EQ_2 s_BS_EQ_3 s_BS_EQ_4 s_WH_CT_1 s_WH_CT_2 s_WH_CT_3 s_WH_CT_4 s_WH_EQ_1 s_WH_EQ_2 s_WH_EQ_3 s_WH_EQ_4 s_WS_CT_1 s_WS_CT_2 s_WS_CT_3 s_WS_CT_4 s_WS_EQ_1 s_WS_EQ_2 s_WS_EQ_3 s_WS_EQ_4

run_ber;
t_BH_CT_1 = BER_HRD_CT_1;   t_BH_EQ_1 = BER_HRD_EQ_1;      
t_BH_CT_2 = BER_HRD_CT_2;   t_BH_EQ_2 = BER_HRD_EQ_2;
t_BH_CT_3 = BER_HRD_CT_3;   t_BH_EQ_3 = BER_HRD_EQ_3;
t_BH_CT_4 = BER_HRD_CT_4;   t_BH_EQ_4 = BER_HRD_EQ_4;

t_BS_CT_1 = BER_SFT_CT_1;   t_BS_EQ_1 = BER_SFT_EQ_1;      
t_BS_CT_2 = BER_SFT_CT_2;   t_BS_EQ_2 = BER_SFT_EQ_2;
t_BS_CT_3 = BER_SFT_CT_3;   t_BS_EQ_3 = BER_SFT_EQ_3;
t_BS_CT_4 = BER_SFT_CT_4;   t_BS_EQ_4 = BER_SFT_EQ_4;

t_WH_CT_1 = WER_HRD_CT_1;   t_WH_EQ_1 = WER_HRD_EQ_1;      
t_WH_CT_2 = WER_HRD_CT_2;   t_WH_EQ_2 = WER_HRD_EQ_2;
t_WH_CT_3 = WER_HRD_CT_3;   t_WH_EQ_3 = WER_HRD_EQ_3;
t_WH_CT_4 = WER_HRD_CT_4;   t_WH_EQ_4 = WER_HRD_EQ_4;

t_WS_CT_1 = WER_SFT_CT_1;   t_WS_EQ_1 = WER_SFT_EQ_1;      
t_WS_CT_2 = WER_SFT_CT_2;   t_WS_EQ_2 = WER_SFT_EQ_2;
t_WS_CT_3 = WER_SFT_CT_3;   t_WS_EQ_3 = WER_SFT_EQ_3;
t_WS_CT_4 = WER_SFT_CT_4;   t_WS_EQ_4 = WER_SFT_EQ_4;
save results_t.mat t_BH_CT_1 t_BH_CT_2 t_BH_CT_3 t_BH_CT_4 t_BH_EQ_1 t_BH_EQ_2 t_BH_EQ_3 t_BH_EQ_4 t_BS_CT_1 t_BS_CT_2 t_BS_CT_3 t_BS_CT_4 t_BS_EQ_1 t_BS_EQ_2 t_BS_EQ_3 t_BS_EQ_4 t_WH_CT_1 t_WH_CT_2 t_WH_CT_3 t_WH_CT_4 t_WH_EQ_1 t_WH_EQ_2 t_WH_EQ_3 t_WH_EQ_4 t_WS_CT_1 t_WS_CT_2 t_WS_CT_3 t_WS_CT_4 t_WS_EQ_1 t_WS_EQ_2 t_WS_EQ_3 t_WS_EQ_4

run_ber;
u_BH_CT_1 = BER_HRD_CT_1;   u_BH_EQ_1 = BER_HRD_EQ_1;      
u_BH_CT_2 = BER_HRD_CT_2;   u_BH_EQ_2 = BER_HRD_EQ_2;
u_BH_CT_3 = BER_HRD_CT_3;   u_BH_EQ_3 = BER_HRD_EQ_3;
u_BH_CT_4 = BER_HRD_CT_4;   u_BH_EQ_4 = BER_HRD_EQ_4;

u_BS_CT_1 = BER_SFT_CT_1;   u_BS_EQ_1 = BER_SFT_EQ_1;      
u_BS_CT_2 = BER_SFT_CT_2;   u_BS_EQ_2 = BER_SFT_EQ_2;
u_BS_CT_3 = BER_SFT_CT_3;   u_BS_EQ_3 = BER_SFT_EQ_3;
u_BS_CT_4 = BER_SFT_CT_4;   u_BS_EQ_4 = BER_SFT_EQ_4;

u_WH_CT_1 = WER_HRD_CT_1;   u_WH_EQ_1 = WER_HRD_EQ_1;      
u_WH_CT_2 = WER_HRD_CT_2;   u_WH_EQ_2 = WER_HRD_EQ_2;
u_WH_CT_3 = WER_HRD_CT_3;   u_WH_EQ_3 = WER_HRD_EQ_3;
u_WH_CT_4 = WER_HRD_CT_4;   u_WH_EQ_4 = WER_HRD_EQ_4;

u_WS_CT_1 = WER_SFT_CT_1;   u_WS_EQ_1 = WER_SFT_EQ_1;      
u_WS_CT_2 = WER_SFT_CT_2;   u_WS_EQ_2 = WER_SFT_EQ_2;
u_WS_CT_3 = WER_SFT_CT_3;   u_WS_EQ_3 = WER_SFT_EQ_3;
u_WS_CT_4 = WER_SFT_CT_4;   u_WS_EQ_4 = WER_SFT_EQ_4;
save results_u.mat u_BH_CT_1 u_BH_CT_2 u_BH_CT_3 u_BH_CT_4 u_BH_EQ_1 u_BH_EQ_2 u_BH_EQ_3 u_BH_EQ_4 u_BS_CT_1 u_BS_CT_2 u_BS_CT_3 u_BS_CT_4 u_BS_EQ_1 u_BS_EQ_2 u_BS_EQ_3 u_BS_EQ_4 u_WH_CT_1 u_WH_CT_2 u_WH_CT_3 u_WH_CT_4 u_WH_EQ_1 u_WH_EQ_2 u_WH_EQ_3 u_WH_EQ_4 u_WS_CT_1 u_WS_CT_2 u_WS_CT_3 u_WS_CT_4 u_WS_EQ_1 u_WS_EQ_2 u_WS_EQ_3 u_WS_EQ_4

run_ber;
v_BH_CT_1 = BER_HRD_CT_1;   v_BH_EQ_1 = BER_HRD_EQ_1;      
v_BH_CT_2 = BER_HRD_CT_2;   v_BH_EQ_2 = BER_HRD_EQ_2;
v_BH_CT_3 = BER_HRD_CT_3;   v_BH_EQ_3 = BER_HRD_EQ_3;
v_BH_CT_4 = BER_HRD_CT_4;   v_BH_EQ_4 = BER_HRD_EQ_4;

v_BS_CT_1 = BER_SFT_CT_1;   v_BS_EQ_1 = BER_SFT_EQ_1;      
v_BS_CT_2 = BER_SFT_CT_2;   v_BS_EQ_2 = BER_SFT_EQ_2;
v_BS_CT_3 = BER_SFT_CT_3;   v_BS_EQ_3 = BER_SFT_EQ_3;
v_BS_CT_4 = BER_SFT_CT_4;   v_BS_EQ_4 = BER_SFT_EQ_4;

v_WH_CT_1 = WER_HRD_CT_1;   v_WH_EQ_1 = WER_HRD_EQ_1;      
v_WH_CT_2 = WER_HRD_CT_2;   v_WH_EQ_2 = WER_HRD_EQ_2;
v_WH_CT_3 = WER_HRD_CT_3;   v_WH_EQ_3 = WER_HRD_EQ_3;
v_WH_CT_4 = WER_HRD_CT_4;   v_WH_EQ_4 = WER_HRD_EQ_4;

v_WS_CT_1 = WER_SFT_CT_1;   v_WS_EQ_1 = WER_SFT_EQ_1;      
v_WS_CT_2 = WER_SFT_CT_2;   v_WS_EQ_2 = WER_SFT_EQ_2;
v_WS_CT_3 = WER_SFT_CT_3;   v_WS_EQ_3 = WER_SFT_EQ_3;
v_WS_CT_4 = WER_SFT_CT_4;   v_WS_EQ_4 = WER_SFT_EQ_4;
save results_v.mat v_BH_CT_1 v_BH_CT_2 v_BH_CT_3 v_BH_CT_4 v_BH_EQ_1 v_BH_EQ_2 v_BH_EQ_3 v_BH_EQ_4 v_BS_CT_1 v_BS_CT_2 v_BS_CT_3 v_BS_CT_4 v_BS_EQ_1 v_BS_EQ_2 v_BS_EQ_3 v_BS_EQ_4 v_WH_CT_1 v_WH_CT_2 v_WH_CT_3 v_WH_CT_4 v_WH_EQ_1 v_WH_EQ_2 v_WH_EQ_3 v_WH_EQ_4 v_WS_CT_1 v_WS_CT_2 v_WS_CT_3 v_WS_CT_4 v_WS_EQ_1 v_WS_EQ_2 v_WS_EQ_3 v_WS_EQ_4

run_ber;
w_BH_CT_1 = BER_HRD_CT_1;   w_BH_EQ_1 = BER_HRD_EQ_1;      
w_BH_CT_2 = BER_HRD_CT_2;   w_BH_EQ_2 = BER_HRD_EQ_2;
w_BH_CT_3 = BER_HRD_CT_3;   w_BH_EQ_3 = BER_HRD_EQ_3;
w_BH_CT_4 = BER_HRD_CT_4;   w_BH_EQ_4 = BER_HRD_EQ_4;

w_BS_CT_1 = BER_SFT_CT_1;   w_BS_EQ_1 = BER_SFT_EQ_1;      
w_BS_CT_2 = BER_SFT_CT_2;   w_BS_EQ_2 = BER_SFT_EQ_2;
w_BS_CT_3 = BER_SFT_CT_3;   w_BS_EQ_3 = BER_SFT_EQ_3;
w_BS_CT_4 = BER_SFT_CT_4;   w_BS_EQ_4 = BER_SFT_EQ_4;

w_WH_CT_1 = WER_HRD_CT_1;   w_WH_EQ_1 = WER_HRD_EQ_1;      
w_WH_CT_2 = WER_HRD_CT_2;   w_WH_EQ_2 = WER_HRD_EQ_2;
w_WH_CT_3 = WER_HRD_CT_3;   w_WH_EQ_3 = WER_HRD_EQ_3;
w_WH_CT_4 = WER_HRD_CT_4;   w_WH_EQ_4 = WER_HRD_EQ_4;

w_WS_CT_1 = WER_SFT_CT_1;   w_WS_EQ_1 = WER_SFT_EQ_1;      
w_WS_CT_2 = WER_SFT_CT_2;   w_WS_EQ_2 = WER_SFT_EQ_2;
w_WS_CT_3 = WER_SFT_CT_3;   w_WS_EQ_3 = WER_SFT_EQ_3;
w_WS_CT_4 = WER_SFT_CT_4;   w_WS_EQ_4 = WER_SFT_EQ_4;
save results_w.mat w_BH_CT_1 w_BH_CT_2 w_BH_CT_3 w_BH_CT_4 w_BH_EQ_1 w_BH_EQ_2 w_BH_EQ_3 w_BH_EQ_4 w_BS_CT_1 w_BS_CT_2 w_BS_CT_3 w_BS_CT_4 w_BS_EQ_1 w_BS_EQ_2 w_BS_EQ_3 w_BS_EQ_4 w_WH_CT_1 w_WH_CT_2 w_WH_CT_3 w_WH_CT_4 w_WH_EQ_1 w_WH_EQ_2 w_WH_EQ_3 w_WH_EQ_4 w_WS_CT_1 w_WS_CT_2 w_WS_CT_3 w_WS_CT_4 w_WS_EQ_1 w_WS_EQ_2 w_WS_EQ_3 w_WS_EQ_4

run_ber;
x_BH_CT_1 = BER_HRD_CT_1;   x_BH_EQ_1 = BER_HRD_EQ_1;      
x_BH_CT_2 = BER_HRD_CT_2;   x_BH_EQ_2 = BER_HRD_EQ_2;
x_BH_CT_3 = BER_HRD_CT_3;   x_BH_EQ_3 = BER_HRD_EQ_3;
x_BH_CT_4 = BER_HRD_CT_4;   x_BH_EQ_4 = BER_HRD_EQ_4;

x_BS_CT_1 = BER_SFT_CT_1;   x_BS_EQ_1 = BER_SFT_EQ_1;      
x_BS_CT_2 = BER_SFT_CT_2;   x_BS_EQ_2 = BER_SFT_EQ_2;
x_BS_CT_3 = BER_SFT_CT_3;   x_BS_EQ_3 = BER_SFT_EQ_3;
x_BS_CT_4 = BER_SFT_CT_4;   x_BS_EQ_4 = BER_SFT_EQ_4;

x_WH_CT_1 = WER_HRD_CT_1;   x_WH_EQ_1 = WER_HRD_EQ_1;      
x_WH_CT_2 = WER_HRD_CT_2;   x_WH_EQ_2 = WER_HRD_EQ_2;
x_WH_CT_3 = WER_HRD_CT_3;   x_WH_EQ_3 = WER_HRD_EQ_3;
x_WH_CT_4 = WER_HRD_CT_4;   x_WH_EQ_4 = WER_HRD_EQ_4;

x_WS_CT_1 = WER_SFT_CT_1;   x_WS_EQ_1 = WER_SFT_EQ_1;      
x_WS_CT_2 = WER_SFT_CT_2;   x_WS_EQ_2 = WER_SFT_EQ_2;
x_WS_CT_3 = WER_SFT_CT_3;   x_WS_EQ_3 = WER_SFT_EQ_3;
x_WS_CT_4 = WER_SFT_CT_4;   x_WS_EQ_4 = WER_SFT_EQ_4;
save results_x.mat x_BH_CT_1 x_BH_CT_2 x_BH_CT_3 x_BH_CT_4 x_BH_EQ_1 x_BH_EQ_2 x_BH_EQ_3 x_BH_EQ_4 x_BS_CT_1 x_BS_CT_2 x_BS_CT_3 x_BS_CT_4 x_BS_EQ_1 x_BS_EQ_2 x_BS_EQ_3 x_BS_EQ_4 x_WH_CT_1 x_WH_CT_2 x_WH_CT_3 x_WH_CT_4 x_WH_EQ_1 x_WH_EQ_2 x_WH_EQ_3 x_WH_EQ_4 x_WS_CT_1 x_WS_CT_2 x_WS_CT_3 x_WS_CT_4 x_WS_EQ_1 x_WS_EQ_2 x_WS_EQ_3 x_WS_EQ_4

run_ber;
y_BH_CT_1 = BER_HRD_CT_1;   y_BH_EQ_1 = BER_HRD_EQ_1;      
y_BH_CT_2 = BER_HRD_CT_2;   y_BH_EQ_2 = BER_HRD_EQ_2;
y_BH_CT_3 = BER_HRD_CT_3;   y_BH_EQ_3 = BER_HRD_EQ_3;
y_BH_CT_4 = BER_HRD_CT_4;   y_BH_EQ_4 = BER_HRD_EQ_4;

y_BS_CT_1 = BER_SFT_CT_1;   y_BS_EQ_1 = BER_SFT_EQ_1;      
y_BS_CT_2 = BER_SFT_CT_2;   y_BS_EQ_2 = BER_SFT_EQ_2;
y_BS_CT_3 = BER_SFT_CT_3;   y_BS_EQ_3 = BER_SFT_EQ_3;
y_BS_CT_4 = BER_SFT_CT_4;   y_BS_EQ_4 = BER_SFT_EQ_4;

y_WH_CT_1 = WER_HRD_CT_1;   y_WH_EQ_1 = WER_HRD_EQ_1;      
y_WH_CT_2 = WER_HRD_CT_2;   y_WH_EQ_2 = WER_HRD_EQ_2;
y_WH_CT_3 = WER_HRD_CT_3;   y_WH_EQ_3 = WER_HRD_EQ_3;
y_WH_CT_4 = WER_HRD_CT_4;   y_WH_EQ_4 = WER_HRD_EQ_4;

y_WS_CT_1 = WER_SFT_CT_1;   y_WS_EQ_1 = WER_SFT_EQ_1;      
y_WS_CT_2 = WER_SFT_CT_2;   y_WS_EQ_2 = WER_SFT_EQ_2;
y_WS_CT_3 = WER_SFT_CT_3;   y_WS_EQ_3 = WER_SFT_EQ_3;
y_WS_CT_4 = WER_SFT_CT_4;   y_WS_EQ_4 = WER_SFT_EQ_4;
save results_y.mat y_BH_CT_1 y_BH_CT_2 y_BH_CT_3 y_BH_CT_4 y_BH_EQ_1 y_BH_EQ_2 y_BH_EQ_3 y_BH_EQ_4 y_BS_CT_1 y_BS_CT_2 y_BS_CT_3 y_BS_CT_4 y_BS_EQ_1 y_BS_EQ_2 y_BS_EQ_3 y_BS_EQ_4 y_WH_CT_1 y_WH_CT_2 y_WH_CT_3 y_WH_CT_4 y_WH_EQ_1 y_WH_EQ_2 y_WH_EQ_3 y_WH_EQ_4 y_WS_CT_1 y_WS_CT_2 y_WS_CT_3 y_WS_CT_4 y_WS_EQ_1 y_WS_EQ_2 y_WS_EQ_3 y_WS_EQ_4

clear all;
load results_a.mat
load results_b.mat
load results_c.mat
load results_d.mat
load results_e.mat
load results_f.mat
load results_g.mat
load results_h.mat
load results_i.mat
load results_j.mat
load results_k.mat
load results_l.mat
load results_m.mat
load results_n.mat
load results_o.mat
load results_p.mat
load results_q.mat
load results_r.mat
load results_s.mat
load results_t.mat
load results_u.mat
load results_v.mat
load results_w.mat
load results_x.mat
load results_y.mat

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%      
% BER HARD
BH_CT_1 = ( a_BH_CT_1 + f_BH_CT_1 + k_BH_CT_1 + p_BH_CT_1 + u_BH_CT_1 + ...
            b_BH_CT_1 + g_BH_CT_1 + l_BH_CT_1 + q_BH_CT_1 + v_BH_CT_1 + ...
            c_BH_CT_1 + h_BH_CT_1 + m_BH_CT_1 + r_BH_CT_1 + w_BH_CT_1 + ...
            d_BH_CT_1 + i_BH_CT_1 + n_BH_CT_1 + s_BH_CT_1 + x_BH_CT_1 + ...
            e_BH_CT_1 + j_BH_CT_1 + o_BH_CT_1 + t_BH_CT_1 + y_BH_CT_1 ) / 25;

BH_CT_2 = ( a_BH_CT_2 + f_BH_CT_2 + k_BH_CT_2 + p_BH_CT_2 + u_BH_CT_2 + ...
            b_BH_CT_2 + g_BH_CT_2 + l_BH_CT_2 + q_BH_CT_2 + v_BH_CT_2 + ...
            c_BH_CT_2 + h_BH_CT_2 + m_BH_CT_2 + r_BH_CT_2 + w_BH_CT_2 + ...
            d_BH_CT_2 + i_BH_CT_2 + n_BH_CT_2 + s_BH_CT_2 + x_BH_CT_2 + ...
            e_BH_CT_2 + j_BH_CT_2 + o_BH_CT_2 + t_BH_CT_2 + y_BH_CT_2 ) / 25;

BH_CT_3 = ( a_BH_CT_3 + f_BH_CT_3 + k_BH_CT_3 + p_BH_CT_3 + u_BH_CT_3 + ...
            b_BH_CT_3 + g_BH_CT_3 + l_BH_CT_3 + q_BH_CT_3 + v_BH_CT_3 + ...
            c_BH_CT_3 + h_BH_CT_3 + m_BH_CT_3 + r_BH_CT_3 + w_BH_CT_3 + ...
            d_BH_CT_3 + i_BH_CT_3 + n_BH_CT_3 + s_BH_CT_3 + x_BH_CT_3 + ...
            e_BH_CT_3 + j_BH_CT_3 + o_BH_CT_3 + t_BH_CT_3 + y_BH_CT_3 ) / 25;        
            
BH_CT_4 = ( a_BH_CT_4 + f_BH_CT_4 + k_BH_CT_4 + p_BH_CT_4 + u_BH_CT_4 + ...
            b_BH_CT_4 + g_BH_CT_4 + l_BH_CT_4 + q_BH_CT_4 + v_BH_CT_4 + ...
            c_BH_CT_4 + h_BH_CT_4 + m_BH_CT_4 + r_BH_CT_4 + w_BH_CT_4 + ...
            d_BH_CT_4 + i_BH_CT_4 + n_BH_CT_4 + s_BH_CT_4 + x_BH_CT_4 + ...
            e_BH_CT_4 + j_BH_CT_4 + o_BH_CT_4 + t_BH_CT_4 + y_BH_CT_4 ) / 25;

BH_EQ_1 = ( a_BH_EQ_1 + f_BH_EQ_1 + k_BH_EQ_1 + p_BH_EQ_1 + u_BH_EQ_1 + ...
            b_BH_EQ_1 + g_BH_EQ_1 + l_BH_EQ_1 + q_BH_EQ_1 + v_BH_EQ_1 + ...
            c_BH_EQ_1 + h_BH_EQ_1 + m_BH_EQ_1 + r_BH_EQ_1 + w_BH_EQ_1 + ...
            d_BH_EQ_1 + i_BH_EQ_1 + n_BH_EQ_1 + s_BH_EQ_1 + x_BH_EQ_1 + ...
            e_BH_EQ_1 + j_BH_EQ_1 + o_BH_EQ_1 + t_BH_EQ_1 + y_BH_EQ_1 ) / 25;

BH_EQ_2 = ( a_BH_EQ_2 + f_BH_EQ_2 + k_BH_EQ_2 + p_BH_EQ_2 + u_BH_EQ_2 + ...
            b_BH_EQ_2 + g_BH_EQ_2 + l_BH_EQ_2 + q_BH_EQ_2 + v_BH_EQ_2 + ...
            c_BH_EQ_2 + h_BH_EQ_2 + m_BH_EQ_2 + r_BH_EQ_2 + w_BH_EQ_2 + ...
            d_BH_EQ_2 + i_BH_EQ_2 + n_BH_EQ_2 + s_BH_EQ_2 + x_BH_EQ_2 + ...
            e_BH_EQ_2 + j_BH_EQ_2 + o_BH_EQ_2 + t_BH_EQ_2 + y_BH_EQ_2 ) / 25;

BH_EQ_3 = ( a_BH_EQ_3 + f_BH_EQ_3 + k_BH_EQ_3 + p_BH_EQ_3 + u_BH_EQ_3 + ...
            b_BH_EQ_3 + g_BH_EQ_3 + l_BH_EQ_3 + q_BH_EQ_3 + v_BH_EQ_3 + ...
            c_BH_EQ_3 + h_BH_EQ_3 + m_BH_EQ_3 + r_BH_EQ_3 + w_BH_EQ_3 + ...
            d_BH_EQ_3 + i_BH_EQ_3 + n_BH_EQ_3 + s_BH_EQ_3 + x_BH_EQ_3 + ...
            e_BH_EQ_3 + j_BH_EQ_3 + o_BH_EQ_3 + t_BH_EQ_3 + y_BH_EQ_3 ) / 25;        
            
BH_EQ_4 = ( a_BH_EQ_4 + f_BH_EQ_4 + k_BH_EQ_4 + p_BH_EQ_4 + u_BH_EQ_4 + ...
            b_BH_EQ_4 + g_BH_EQ_4 + l_BH_EQ_4 + q_BH_EQ_4 + v_BH_EQ_4 + ...
            c_BH_EQ_4 + h_BH_EQ_4 + m_BH_EQ_4 + r_BH_EQ_4 + w_BH_EQ_4 + ...
            d_BH_EQ_4 + i_BH_EQ_4 + n_BH_EQ_4 + s_BH_EQ_4 + x_BH_EQ_4 + ...
            e_BH_EQ_4 + j_BH_EQ_4 + o_BH_EQ_4 + t_BH_EQ_4 + y_BH_EQ_4 ) / 25;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%      
% BER SOFT
BS_CT_1 = ( a_BS_CT_1 + f_BS_CT_1 + k_BS_CT_1 + p_BS_CT_1 + u_BS_CT_1 + ...
            b_BS_CT_1 + g_BS_CT_1 + l_BS_CT_1 + q_BS_CT_1 + v_BS_CT_1 + ...
            c_BS_CT_1 + h_BS_CT_1 + m_BS_CT_1 + r_BS_CT_1 + w_BS_CT_1 + ...
            d_BS_CT_1 + i_BS_CT_1 + n_BS_CT_1 + s_BS_CT_1 + x_BS_CT_1 + ...
            e_BS_CT_1 + j_BS_CT_1 + o_BS_CT_1 + t_BS_CT_1 + y_BS_CT_1 ) / 25;

BS_CT_2 = ( a_BS_CT_2 + f_BS_CT_2 + k_BS_CT_2 + p_BS_CT_2 + u_BS_CT_2 + ...
            b_BS_CT_2 + g_BS_CT_2 + l_BS_CT_2 + q_BS_CT_2 + v_BS_CT_2 + ...
            c_BS_CT_2 + h_BS_CT_2 + m_BS_CT_2 + r_BS_CT_2 + w_BS_CT_2 + ...
            d_BS_CT_2 + i_BS_CT_2 + n_BS_CT_2 + s_BS_CT_2 + x_BS_CT_2 + ...
            e_BS_CT_2 + j_BS_CT_2 + o_BS_CT_2 + t_BS_CT_2 + y_BS_CT_2 ) / 25;

BS_CT_3 = ( a_BS_CT_3 + f_BS_CT_3 + k_BS_CT_3 + p_BS_CT_3 + u_BS_CT_3 + ...
            b_BS_CT_3 + g_BS_CT_3 + l_BS_CT_3 + q_BS_CT_3 + v_BS_CT_3 + ...
            c_BS_CT_3 + h_BS_CT_3 + m_BS_CT_3 + r_BS_CT_3 + w_BS_CT_3 + ...
            d_BS_CT_3 + i_BS_CT_3 + n_BS_CT_3 + s_BS_CT_3 + x_BS_CT_3 + ...
            e_BS_CT_3 + j_BS_CT_3 + o_BS_CT_3 + t_BS_CT_3 + y_BS_CT_3 ) / 25;        
            
BS_CT_4 = ( a_BS_CT_4 + f_BS_CT_4 + k_BS_CT_4 + p_BS_CT_4 + u_BS_CT_4 + ...
            b_BS_CT_4 + g_BS_CT_4 + l_BS_CT_4 + q_BS_CT_4 + v_BS_CT_4 + ...
            c_BS_CT_4 + h_BS_CT_4 + m_BS_CT_4 + r_BS_CT_4 + w_BS_CT_4 + ...
            d_BS_CT_4 + i_BS_CT_4 + n_BS_CT_4 + s_BS_CT_4 + x_BS_CT_4 + ...
            e_BS_CT_4 + j_BS_CT_4 + o_BS_CT_4 + t_BS_CT_4 + y_BS_CT_4 ) / 25;

BS_EQ_1 = ( a_BS_EQ_1 + f_BS_EQ_1 + k_BS_EQ_1 + p_BS_EQ_1 + u_BS_EQ_1 + ...
            b_BS_EQ_1 + g_BS_EQ_1 + l_BS_EQ_1 + q_BS_EQ_1 + v_BS_EQ_1 + ...
            c_BS_EQ_1 + h_BS_EQ_1 + m_BS_EQ_1 + r_BS_EQ_1 + w_BS_EQ_1 + ...
            d_BS_EQ_1 + i_BS_EQ_1 + n_BS_EQ_1 + s_BS_EQ_1 + x_BS_EQ_1 + ...
            e_BS_EQ_1 + j_BS_EQ_1 + o_BS_EQ_1 + t_BS_EQ_1 + y_BS_EQ_1 ) / 25;

BS_EQ_2 = ( a_BS_EQ_2 + f_BS_EQ_2 + k_BS_EQ_2 + p_BS_EQ_2 + u_BS_EQ_2 + ...
            b_BS_EQ_2 + g_BS_EQ_2 + l_BS_EQ_2 + q_BS_EQ_2 + v_BS_EQ_2 + ...
            c_BS_EQ_2 + h_BS_EQ_2 + m_BS_EQ_2 + r_BS_EQ_2 + w_BS_EQ_2 + ...
            d_BS_EQ_2 + i_BS_EQ_2 + n_BS_EQ_2 + s_BS_EQ_2 + x_BS_EQ_2 + ...
            e_BS_EQ_2 + j_BS_EQ_2 + o_BS_EQ_2 + t_BS_EQ_2 + y_BS_EQ_2 ) / 25;

BS_EQ_3 = ( a_BS_EQ_3 + f_BS_EQ_3 + k_BS_EQ_3 + p_BS_EQ_3 + u_BS_EQ_3 + ...
            b_BS_EQ_3 + g_BS_EQ_3 + l_BS_EQ_3 + q_BS_EQ_3 + v_BS_EQ_3 + ...
            c_BS_EQ_3 + h_BS_EQ_3 + m_BS_EQ_3 + r_BS_EQ_3 + w_BS_EQ_3 + ...
            d_BS_EQ_3 + i_BS_EQ_3 + n_BS_EQ_3 + s_BS_EQ_3 + x_BS_EQ_3 + ...
            e_BS_EQ_3 + j_BS_EQ_3 + o_BS_EQ_3 + t_BS_EQ_3 + y_BS_EQ_3 ) / 25;        
            
BS_EQ_4 = ( a_BS_EQ_4 + f_BS_EQ_4 + k_BS_EQ_4 + p_BS_EQ_4 + u_BS_EQ_4 + ...
            b_BS_EQ_4 + g_BS_EQ_4 + l_BS_EQ_4 + q_BS_EQ_4 + v_BS_EQ_4 + ...
            c_BS_EQ_4 + h_BS_EQ_4 + m_BS_EQ_4 + r_BS_EQ_4 + w_BS_EQ_4 + ...
            d_BS_EQ_4 + i_BS_EQ_4 + n_BS_EQ_4 + s_BS_EQ_4 + x_BS_EQ_4 + ...
            e_BS_EQ_4 + j_BS_EQ_4 + o_BS_EQ_4 + t_BS_EQ_4 + y_BS_EQ_4 ) / 25;        
        
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%      
% WER HARD
WH_CT_1 = ( a_WH_CT_1 + f_WH_CT_1 + k_WH_CT_1 + p_WH_CT_1 + u_WH_CT_1 + ...
            b_WH_CT_1 + g_WH_CT_1 + l_WH_CT_1 + q_WH_CT_1 + v_WH_CT_1 + ...
            c_WH_CT_1 + h_WH_CT_1 + m_WH_CT_1 + r_WH_CT_1 + w_WH_CT_1 + ...
            d_WH_CT_1 + i_WH_CT_1 + n_WH_CT_1 + s_WH_CT_1 + x_WH_CT_1 + ...
            e_WH_CT_1 + j_WH_CT_1 + o_WH_CT_1 + t_WH_CT_1 + y_WH_CT_1 ) / 25;

WH_CT_2 = ( a_WH_CT_2 + f_WH_CT_2 + k_WH_CT_2 + p_WH_CT_2 + u_WH_CT_2 + ...
            b_WH_CT_2 + g_WH_CT_2 + l_WH_CT_2 + q_WH_CT_2 + v_WH_CT_2 + ...
            c_WH_CT_2 + h_WH_CT_2 + m_WH_CT_2 + r_WH_CT_2 + w_WH_CT_2 + ...
            d_WH_CT_2 + i_WH_CT_2 + n_WH_CT_2 + s_WH_CT_2 + x_WH_CT_2 + ...
            e_WH_CT_2 + j_WH_CT_2 + o_WH_CT_2 + t_WH_CT_2 + y_WH_CT_2 ) / 25;

WH_CT_3 = ( a_WH_CT_3 + f_WH_CT_3 + k_WH_CT_3 + p_WH_CT_3 + u_WH_CT_3 + ...
            b_WH_CT_3 + g_WH_CT_3 + l_WH_CT_3 + q_WH_CT_3 + v_WH_CT_3 + ...
            c_WH_CT_3 + h_WH_CT_3 + m_WH_CT_3 + r_WH_CT_3 + w_WH_CT_3 + ...
            d_WH_CT_3 + i_WH_CT_3 + n_WH_CT_3 + s_WH_CT_3 + x_WH_CT_3 + ...
            e_WH_CT_3 + j_WH_CT_3 + o_WH_CT_3 + t_WH_CT_3 + y_WH_CT_3 ) / 25;        
            
WH_CT_4 = ( a_WH_CT_4 + f_WH_CT_4 + k_WH_CT_4 + p_WH_CT_4 + u_WH_CT_4 + ...
            b_WH_CT_4 + g_WH_CT_4 + l_WH_CT_4 + q_WH_CT_4 + v_WH_CT_4 + ...
            c_WH_CT_4 + h_WH_CT_4 + m_WH_CT_4 + r_WH_CT_4 + w_WH_CT_4 + ...
            d_WH_CT_4 + i_WH_CT_4 + n_WH_CT_4 + s_WH_CT_4 + x_WH_CT_4 + ...
            e_WH_CT_4 + j_WH_CT_4 + o_WH_CT_4 + t_WH_CT_4 + y_WH_CT_4 ) / 25;

WH_EQ_1 = ( a_WH_EQ_1 + f_WH_EQ_1 + k_WH_EQ_1 + p_WH_EQ_1 + u_WH_EQ_1 + ...
            b_WH_EQ_1 + g_WH_EQ_1 + l_WH_EQ_1 + q_WH_EQ_1 + v_WH_EQ_1 + ...
            c_WH_EQ_1 + h_WH_EQ_1 + m_WH_EQ_1 + r_WH_EQ_1 + w_WH_EQ_1 + ...
            d_WH_EQ_1 + i_WH_EQ_1 + n_WH_EQ_1 + s_WH_EQ_1 + x_WH_EQ_1 + ...
            e_WH_EQ_1 + j_WH_EQ_1 + o_WH_EQ_1 + t_WH_EQ_1 + y_WH_EQ_1 ) / 25;

WH_EQ_2 = ( a_WH_EQ_2 + f_WH_EQ_2 + k_WH_EQ_2 + p_WH_EQ_2 + u_WH_EQ_2 + ...
            b_WH_EQ_2 + g_WH_EQ_2 + l_WH_EQ_2 + q_WH_EQ_2 + v_WH_EQ_2 + ...
            c_WH_EQ_2 + h_WH_EQ_2 + m_WH_EQ_2 + r_WH_EQ_2 + w_WH_EQ_2 + ...
            d_WH_EQ_2 + i_WH_EQ_2 + n_WH_EQ_2 + s_WH_EQ_2 + x_WH_EQ_2 + ...
            e_WH_EQ_2 + j_WH_EQ_2 + o_WH_EQ_2 + t_WH_EQ_2 + y_WH_EQ_2 ) / 25;

WH_EQ_3 = ( a_WH_EQ_3 + f_WH_EQ_3 + k_WH_EQ_3 + p_WH_EQ_3 + u_WH_EQ_3 + ...
            b_WH_EQ_3 + g_WH_EQ_3 + l_WH_EQ_3 + q_WH_EQ_3 + v_WH_EQ_3 + ...
            c_WH_EQ_3 + h_WH_EQ_3 + m_WH_EQ_3 + r_WH_EQ_3 + w_WH_EQ_3 + ...
            d_WH_EQ_3 + i_WH_EQ_3 + n_WH_EQ_3 + s_WH_EQ_3 + x_WH_EQ_3 + ...
            e_WH_EQ_3 + j_WH_EQ_3 + o_WH_EQ_3 + t_WH_EQ_3 + y_WH_EQ_3 ) / 25;        
            
WH_EQ_4 = ( a_WH_EQ_4 + f_WH_EQ_4 + k_WH_EQ_4 + p_WH_EQ_4 + u_WH_EQ_4 + ...
            b_WH_EQ_4 + g_WH_EQ_4 + l_WH_EQ_4 + q_WH_EQ_4 + v_WH_EQ_4 + ...
            c_WH_EQ_4 + h_WH_EQ_4 + m_WH_EQ_4 + r_WH_EQ_4 + w_WH_EQ_4 + ...
            d_WH_EQ_4 + i_WH_EQ_4 + n_WH_EQ_4 + s_WH_EQ_4 + x_WH_EQ_4 + ...
            e_WH_EQ_4 + j_WH_EQ_4 + o_WH_EQ_4 + t_WH_EQ_4 + y_WH_EQ_4 ) / 25;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%      
% WER SOFT
WS_CT_1 = ( a_WS_CT_1 + f_WS_CT_1 + k_WS_CT_1 + p_WS_CT_1 + u_WS_CT_1 + ...
            b_WS_CT_1 + g_WS_CT_1 + l_WS_CT_1 + q_WS_CT_1 + v_WS_CT_1 + ...
            c_WS_CT_1 + h_WS_CT_1 + m_WS_CT_1 + r_WS_CT_1 + w_WS_CT_1 + ...
            d_WS_CT_1 + i_WS_CT_1 + n_WS_CT_1 + s_WS_CT_1 + x_WS_CT_1 + ...
            e_WS_CT_1 + j_WS_CT_1 + o_WS_CT_1 + t_WS_CT_1 + y_WS_CT_1 ) / 25;

WS_CT_2 = ( a_WS_CT_2 + f_WS_CT_2 + k_WS_CT_2 + p_WS_CT_2 + u_WS_CT_2 + ...
            b_WS_CT_2 + g_WS_CT_2 + l_WS_CT_2 + q_WS_CT_2 + v_WS_CT_2 + ...
            c_WS_CT_2 + h_WS_CT_2 + m_WS_CT_2 + r_WS_CT_2 + w_WS_CT_2 + ...
            d_WS_CT_2 + i_WS_CT_2 + n_WS_CT_2 + s_WS_CT_2 + x_WS_CT_2 + ...
            e_WS_CT_2 + j_WS_CT_2 + o_WS_CT_2 + t_WS_CT_2 + y_WS_CT_2 ) / 25;

WS_CT_3 = ( a_WS_CT_3 + f_WS_CT_3 + k_WS_CT_3 + p_WS_CT_3 + u_WS_CT_3 + ...
            b_WS_CT_3 + g_WS_CT_3 + l_WS_CT_3 + q_WS_CT_3 + v_WS_CT_3 + ...
            c_WS_CT_3 + h_WS_CT_3 + m_WS_CT_3 + r_WS_CT_3 + w_WS_CT_3 + ...
            d_WS_CT_3 + i_WS_CT_3 + n_WS_CT_3 + s_WS_CT_3 + x_WS_CT_3 + ...
            e_WS_CT_3 + j_WS_CT_3 + o_WS_CT_3 + t_WS_CT_3 + y_WS_CT_3 ) / 25;        
            
WS_CT_4 = ( a_WS_CT_4 + f_WS_CT_4 + k_WS_CT_4 + p_WS_CT_4 + u_WS_CT_4 + ...
            b_WS_CT_4 + g_WS_CT_4 + l_WS_CT_4 + q_WS_CT_4 + v_WS_CT_4 + ...
            c_WS_CT_4 + h_WS_CT_4 + m_WS_CT_4 + r_WS_CT_4 + w_WS_CT_4 + ...
            d_WS_CT_4 + i_WS_CT_4 + n_WS_CT_4 + s_WS_CT_4 + x_WS_CT_4 + ...
            e_WS_CT_4 + j_WS_CT_4 + o_WS_CT_4 + t_WS_CT_4 + y_WS_CT_4 ) / 25;

WS_EQ_1 = ( a_WS_EQ_1 + f_WS_EQ_1 + k_WS_EQ_1 + p_WS_EQ_1 + u_WS_EQ_1 + ...
            b_WS_EQ_1 + g_WS_EQ_1 + l_WS_EQ_1 + q_WS_EQ_1 + v_WS_EQ_1 + ...
            c_WS_EQ_1 + h_WS_EQ_1 + m_WS_EQ_1 + r_WS_EQ_1 + w_WS_EQ_1 + ...
            d_WS_EQ_1 + i_WS_EQ_1 + n_WS_EQ_1 + s_WS_EQ_1 + x_WS_EQ_1 + ...
            e_WS_EQ_1 + j_WS_EQ_1 + o_WS_EQ_1 + t_WS_EQ_1 + y_WS_EQ_1 ) / 25;

WS_EQ_2 = ( a_WS_EQ_2 + f_WS_EQ_2 + k_WS_EQ_2 + p_WS_EQ_2 + u_WS_EQ_2 + ...
            b_WS_EQ_2 + g_WS_EQ_2 + l_WS_EQ_2 + q_WS_EQ_2 + v_WS_EQ_2 + ...
            c_WS_EQ_2 + h_WS_EQ_2 + m_WS_EQ_2 + r_WS_EQ_2 + w_WS_EQ_2 + ...
            d_WS_EQ_2 + i_WS_EQ_2 + n_WS_EQ_2 + s_WS_EQ_2 + x_WS_EQ_2 + ...
            e_WS_EQ_2 + j_WS_EQ_2 + o_WS_EQ_2 + t_WS_EQ_2 + y_WS_EQ_2 ) / 25;

WS_EQ_3 = ( a_WS_EQ_3 + f_WS_EQ_3 + k_WS_EQ_3 + p_WS_EQ_3 + u_WS_EQ_3 + ...
            b_WS_EQ_3 + g_WS_EQ_3 + l_WS_EQ_3 + q_WS_EQ_3 + v_WS_EQ_3 + ...
            c_WS_EQ_3 + h_WS_EQ_3 + m_WS_EQ_3 + r_WS_EQ_3 + w_WS_EQ_3 + ...
            d_WS_EQ_3 + i_WS_EQ_3 + n_WS_EQ_3 + s_WS_EQ_3 + x_WS_EQ_3 + ...
            e_WS_EQ_3 + j_WS_EQ_3 + o_WS_EQ_3 + t_WS_EQ_3 + y_WS_EQ_3 ) / 25;        
            
WS_EQ_4 = ( a_WS_EQ_4 + f_WS_EQ_4 + k_WS_EQ_4 + p_WS_EQ_4 + u_WS_EQ_4 + ...
            b_WS_EQ_4 + g_WS_EQ_4 + l_WS_EQ_4 + q_WS_EQ_4 + v_WS_EQ_4 + ...
            c_WS_EQ_4 + h_WS_EQ_4 + m_WS_EQ_4 + r_WS_EQ_4 + w_WS_EQ_4 + ...
            d_WS_EQ_4 + i_WS_EQ_4 + n_WS_EQ_4 + s_WS_EQ_4 + x_WS_EQ_4 + ...
            e_WS_EQ_4 + j_WS_EQ_4 + o_WS_EQ_4 + t_WS_EQ_4 + y_WS_EQ_4 ) / 25;        
      
save results2500_block.mat BH_CT_1 BH_CT_2 BH_CT_3 BH_CT_4 BH_EQ_1 BH_EQ_2 BH_EQ_3 BH_EQ_4 BS_CT_1 BS_CT_2 BS_CT_3 BS_CT_4 BS_EQ_1 BS_EQ_2 BS_EQ_3 BS_EQ_4 WH_CT_1 WH_CT_2 WH_CT_3 WH_CT_4 WH_EQ_1 WH_EQ_2 WH_EQ_3 WH_EQ_4 WS_CT_1 WS_CT_2 WS_CT_3 WS_CT_4 WS_EQ_1 WS_EQ_2 WS_EQ_3 WS_EQ_4
