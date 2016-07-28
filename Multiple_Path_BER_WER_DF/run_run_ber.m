% This will run 2500 simulations in 100 chunks.
clear all;

OFFSET = 1;

rand('state', OFFSET);
randn('state', OFFSET);

run_ber;
a_BH_1 = BER_HRD_1;  
a_BH_2 = BER_HRD_2;  
a_BH_3 = BER_HRD_3;  
a_BH_4 = BER_HRD_4;  

a_BS_1 = BER_SFT_1;
a_BS_2 = BER_SFT_2;
a_BS_3 = BER_SFT_3;
a_BS_4 = BER_SFT_4;

a_WH_1 = WER_HRD_1;  
a_WH_2 = WER_HRD_2;  
a_WH_3 = WER_HRD_3;  
a_WH_4 = WER_HRD_4;  

a_WS_1 = WER_SFT_1;   
a_WS_2 = WER_SFT_2;   
a_WS_3 = WER_SFT_3;   
a_WS_4 = WER_SFT_4;   
save results_a.mat a_BH_1 a_BH_2 a_BH_3 a_BH_4 a_BS_1 a_BS_2 a_BS_3 a_BS_4 a_WH_1 a_WH_2 a_WH_3 a_WH_4 a_WS_1 a_WS_2 a_WS_3 a_WS_4 

run_ber;
b_BH_1 = BER_HRD_1;  
b_BH_2 = BER_HRD_2;  
b_BH_3 = BER_HRD_3;  
b_BH_4 = BER_HRD_4;  

b_BS_1 = BER_SFT_1;
b_BS_2 = BER_SFT_2;
b_BS_3 = BER_SFT_3;
b_BS_4 = BER_SFT_4;

b_WH_1 = WER_HRD_1;  
b_WH_2 = WER_HRD_2;  
b_WH_3 = WER_HRD_3;  
b_WH_4 = WER_HRD_4;  

b_WS_1 = WER_SFT_1;   
b_WS_2 = WER_SFT_2;   
b_WS_3 = WER_SFT_3;   
b_WS_4 = WER_SFT_4;   
save results_b.mat b_BH_1 b_BH_2 b_BH_3 b_BH_4 b_BS_1 b_BS_2 b_BS_3 b_BS_4 b_WH_1 b_WH_2 b_WH_3 b_WH_4 b_WS_1 b_WS_2 b_WS_3 b_WS_4 

run_ber;
c_BH_1 = BER_HRD_1;  
c_BH_2 = BER_HRD_2;  
c_BH_3 = BER_HRD_3;  
c_BH_4 = BER_HRD_4;  

c_BS_1 = BER_SFT_1;
c_BS_2 = BER_SFT_2;
c_BS_3 = BER_SFT_3;
c_BS_4 = BER_SFT_4;

c_WH_1 = WER_HRD_1;  
c_WH_2 = WER_HRD_2;  
c_WH_3 = WER_HRD_3;  
c_WH_4 = WER_HRD_4;  

c_WS_1 = WER_SFT_1;   
c_WS_2 = WER_SFT_2;   
c_WS_3 = WER_SFT_3;   
c_WS_4 = WER_SFT_4;   
save results_c.mat c_BH_1 c_BH_2 c_BH_3 c_BH_4 c_BS_1 c_BS_2 c_BS_3 c_BS_4 c_WH_1 c_WH_2 c_WH_3 c_WH_4 c_WS_1 c_WS_2 c_WS_3 c_WS_4 

run_ber;
d_BH_1 = BER_HRD_1;  
d_BH_2 = BER_HRD_2;  
d_BH_3 = BER_HRD_3;  
d_BH_4 = BER_HRD_4;  

d_BS_1 = BER_SFT_1;
d_BS_2 = BER_SFT_2;
d_BS_3 = BER_SFT_3;
d_BS_4 = BER_SFT_4;

d_WH_1 = WER_HRD_1;  
d_WH_2 = WER_HRD_2;  
d_WH_3 = WER_HRD_3;  
d_WH_4 = WER_HRD_4;  

d_WS_1 = WER_SFT_1;   
d_WS_2 = WER_SFT_2;   
d_WS_3 = WER_SFT_3;   
d_WS_4 = WER_SFT_4;   
save results_d.mat d_BH_1 d_BH_2 d_BH_3 d_BH_4 d_BS_1 d_BS_2 d_BS_3 d_BS_4 d_WH_1 d_WH_2 d_WH_3 d_WH_4 d_WS_1 d_WS_2 d_WS_3 d_WS_4 

run_ber;
e_BH_1 = BER_HRD_1;  
e_BH_2 = BER_HRD_2;  
e_BH_3 = BER_HRD_3;  
e_BH_4 = BER_HRD_4;  

e_BS_1 = BER_SFT_1;
e_BS_2 = BER_SFT_2;
e_BS_3 = BER_SFT_3;
e_BS_4 = BER_SFT_4;

e_WH_1 = WER_HRD_1;  
e_WH_2 = WER_HRD_2;  
e_WH_3 = WER_HRD_3;  
e_WH_4 = WER_HRD_4;  

e_WS_1 = WER_SFT_1;   
e_WS_2 = WER_SFT_2;   
e_WS_3 = WER_SFT_3;   
e_WS_4 = WER_SFT_4;   
save results_e.mat e_BH_1 e_BH_2 e_BH_3 e_BH_4 e_BS_1 e_BS_2 e_BS_3 e_BS_4 e_WH_1 e_WH_2 e_WH_3 e_WH_4 e_WS_1 e_WS_2 e_WS_3 e_WS_4 

run_ber;
f_BH_1 = BER_HRD_1;  
f_BH_2 = BER_HRD_2;  
f_BH_3 = BER_HRD_3;  
f_BH_4 = BER_HRD_4;  

f_BS_1 = BER_SFT_1;
f_BS_2 = BER_SFT_2;
f_BS_3 = BER_SFT_3;
f_BS_4 = BER_SFT_4;

f_WH_1 = WER_HRD_1;  
f_WH_2 = WER_HRD_2;  
f_WH_3 = WER_HRD_3;  
f_WH_4 = WER_HRD_4;  

f_WS_1 = WER_SFT_1;   
f_WS_2 = WER_SFT_2;   
f_WS_3 = WER_SFT_3;   
f_WS_4 = WER_SFT_4;   
save results_f.mat f_BH_1 f_BH_2 f_BH_3 f_BH_4 f_BS_1 f_BS_2 f_BS_3 f_BS_4 f_WH_1 f_WH_2 f_WH_3 f_WH_4 f_WS_1 f_WS_2 f_WS_3 f_WS_4 

run_ber;
g_BH_1 = BER_HRD_1;  
g_BH_2 = BER_HRD_2;  
g_BH_3 = BER_HRD_3;  
g_BH_4 = BER_HRD_4;  

g_BS_1 = BER_SFT_1;
g_BS_2 = BER_SFT_2;
g_BS_3 = BER_SFT_3;
g_BS_4 = BER_SFT_4;

g_WH_1 = WER_HRD_1;  
g_WH_2 = WER_HRD_2;  
g_WH_3 = WER_HRD_3;  
g_WH_4 = WER_HRD_4;  

g_WS_1 = WER_SFT_1;   
g_WS_2 = WER_SFT_2;   
g_WS_3 = WER_SFT_3;   
g_WS_4 = WER_SFT_4;   
save results_g.mat g_BH_1 g_BH_2 g_BH_3 g_BH_4 g_BS_1 g_BS_2 g_BS_3 g_BS_4 g_WH_1 g_WH_2 g_WH_3 g_WH_4 g_WS_1 g_WS_2 g_WS_3 g_WS_4 

run_ber;
h_BH_1 = BER_HRD_1;  
h_BH_2 = BER_HRD_2;  
h_BH_3 = BER_HRD_3;  
h_BH_4 = BER_HRD_4;  

h_BS_1 = BER_SFT_1;
h_BS_2 = BER_SFT_2;
h_BS_3 = BER_SFT_3;
h_BS_4 = BER_SFT_4;

h_WH_1 = WER_HRD_1;  
h_WH_2 = WER_HRD_2;  
h_WH_3 = WER_HRD_3;  
h_WH_4 = WER_HRD_4;  

h_WS_1 = WER_SFT_1;   
h_WS_2 = WER_SFT_2;   
h_WS_3 = WER_SFT_3;   
h_WS_4 = WER_SFT_4;   
save results_h.mat h_BH_1 h_BH_2 h_BH_3 h_BH_4 h_BS_1 h_BS_2 h_BS_3 h_BS_4 h_WH_1 h_WH_2 h_WH_3 h_WH_4 h_WS_1 h_WS_2 h_WS_3 h_WS_4 

run_ber;
i_BH_1 = BER_HRD_1;  
i_BH_2 = BER_HRD_2;  
i_BH_3 = BER_HRD_3;  
i_BH_4 = BER_HRD_4;  

i_BS_1 = BER_SFT_1;
i_BS_2 = BER_SFT_2;
i_BS_3 = BER_SFT_3;
i_BS_4 = BER_SFT_4;

i_WH_1 = WER_HRD_1;  
i_WH_2 = WER_HRD_2;  
i_WH_3 = WER_HRD_3;  
i_WH_4 = WER_HRD_4;  

i_WS_1 = WER_SFT_1;   
i_WS_2 = WER_SFT_2;   
i_WS_3 = WER_SFT_3;   
i_WS_4 = WER_SFT_4;   
save results_i.mat i_BH_1 i_BH_2 i_BH_3 i_BH_4 i_BS_1 i_BS_2 i_BS_3 i_BS_4 i_WH_1 i_WH_2 i_WH_3 i_WH_4 i_WS_1 i_WS_2 i_WS_3 i_WS_4 

run_ber;
j_BH_1 = BER_HRD_1;  
j_BH_2 = BER_HRD_2;  
j_BH_3 = BER_HRD_3;  
j_BH_4 = BER_HRD_4;  

j_BS_1 = BER_SFT_1;
j_BS_2 = BER_SFT_2;
j_BS_3 = BER_SFT_3;
j_BS_4 = BER_SFT_4;

j_WH_1 = WER_HRD_1;  
j_WH_2 = WER_HRD_2;  
j_WH_3 = WER_HRD_3;  
j_WH_4 = WER_HRD_4;  

j_WS_1 = WER_SFT_1;   
j_WS_2 = WER_SFT_2;   
j_WS_3 = WER_SFT_3;   
j_WS_4 = WER_SFT_4;   
save results_j.mat j_BH_1 j_BH_2 j_BH_3 j_BH_4 j_BS_1 j_BS_2 j_BS_3 j_BS_4 j_WH_1 j_WH_2 j_WH_3 j_WH_4 j_WS_1 j_WS_2 j_WS_3 j_WS_4 

run_ber;
k_BH_1 = BER_HRD_1;  
k_BH_2 = BER_HRD_2;  
k_BH_3 = BER_HRD_3;  
k_BH_4 = BER_HRD_4;  

k_BS_1 = BER_SFT_1;
k_BS_2 = BER_SFT_2;
k_BS_3 = BER_SFT_3;
k_BS_4 = BER_SFT_4;

k_WH_1 = WER_HRD_1;  
k_WH_2 = WER_HRD_2;  
k_WH_3 = WER_HRD_3;  
k_WH_4 = WER_HRD_4;  

k_WS_1 = WER_SFT_1;   
k_WS_2 = WER_SFT_2;   
k_WS_3 = WER_SFT_3;   
k_WS_4 = WER_SFT_4;   
save results_k.mat k_BH_1 k_BH_2 k_BH_3 k_BH_4 k_BS_1 k_BS_2 k_BS_3 k_BS_4 k_WH_1 k_WH_2 k_WH_3 k_WH_4 k_WS_1 k_WS_2 k_WS_3 k_WS_4 

run_ber;
l_BH_1 = BER_HRD_1;  
l_BH_2 = BER_HRD_2;  
l_BH_3 = BER_HRD_3;  
l_BH_4 = BER_HRD_4;  

l_BS_1 = BER_SFT_1;
l_BS_2 = BER_SFT_2;
l_BS_3 = BER_SFT_3;
l_BS_4 = BER_SFT_4;

l_WH_1 = WER_HRD_1;  
l_WH_2 = WER_HRD_2;  
l_WH_3 = WER_HRD_3;  
l_WH_4 = WER_HRD_4;  

l_WS_1 = WER_SFT_1;   
l_WS_2 = WER_SFT_2;   
l_WS_3 = WER_SFT_3;   
l_WS_4 = WER_SFT_4;   
save results_l.mat l_BH_1 l_BH_2 l_BH_3 l_BH_4 l_BS_1 l_BS_2 l_BS_3 l_BS_4 l_WH_1 l_WH_2 l_WH_3 l_WH_4 l_WS_1 l_WS_2 l_WS_3 l_WS_4 

run_ber;
m_BH_1 = BER_HRD_1;  
m_BH_2 = BER_HRD_2;  
m_BH_3 = BER_HRD_3;  
m_BH_4 = BER_HRD_4;  

m_BS_1 = BER_SFT_1;
m_BS_2 = BER_SFT_2;
m_BS_3 = BER_SFT_3;
m_BS_4 = BER_SFT_4;

m_WH_1 = WER_HRD_1;  
m_WH_2 = WER_HRD_2;  
m_WH_3 = WER_HRD_3;  
m_WH_4 = WER_HRD_4;  

m_WS_1 = WER_SFT_1;   
m_WS_2 = WER_SFT_2;   
m_WS_3 = WER_SFT_3;   
m_WS_4 = WER_SFT_4;   
save results_m.mat m_BH_1 m_BH_2 m_BH_3 m_BH_4 m_BS_1 m_BS_2 m_BS_3 m_BS_4 m_WH_1 m_WH_2 m_WH_3 m_WH_4 m_WS_1 m_WS_2 m_WS_3 m_WS_4 

run_ber;
n_BH_1 = BER_HRD_1;  
n_BH_2 = BER_HRD_2;  
n_BH_3 = BER_HRD_3;  
n_BH_4 = BER_HRD_4;  

n_BS_1 = BER_SFT_1;
n_BS_2 = BER_SFT_2;
n_BS_3 = BER_SFT_3;
n_BS_4 = BER_SFT_4;

n_WH_1 = WER_HRD_1;  
n_WH_2 = WER_HRD_2;  
n_WH_3 = WER_HRD_3;  
n_WH_4 = WER_HRD_4;  

n_WS_1 = WER_SFT_1;   
n_WS_2 = WER_SFT_2;   
n_WS_3 = WER_SFT_3;   
n_WS_4 = WER_SFT_4;   
save results_n.mat n_BH_1 n_BH_2 n_BH_3 n_BH_4 n_BS_1 n_BS_2 n_BS_3 n_BS_4 n_WH_1 n_WH_2 n_WH_3 n_WH_4 n_WS_1 n_WS_2 n_WS_3 n_WS_4 

run_ber;
o_BH_1 = BER_HRD_1;  
o_BH_2 = BER_HRD_2;  
o_BH_3 = BER_HRD_3;  
o_BH_4 = BER_HRD_4;  

o_BS_1 = BER_SFT_1;
o_BS_2 = BER_SFT_2;
o_BS_3 = BER_SFT_3;
o_BS_4 = BER_SFT_4;

o_WH_1 = WER_HRD_1;  
o_WH_2 = WER_HRD_2;  
o_WH_3 = WER_HRD_3;  
o_WH_4 = WER_HRD_4;  

o_WS_1 = WER_SFT_1;   
o_WS_2 = WER_SFT_2;   
o_WS_3 = WER_SFT_3;   
o_WS_4 = WER_SFT_4;   
save results_o.mat o_BH_1 o_BH_2 o_BH_3 o_BH_4 o_BS_1 o_BS_2 o_BS_3 o_BS_4 o_WH_1 o_WH_2 o_WH_3 o_WH_4 o_WS_1 o_WS_2 o_WS_3 o_WS_4 

run_ber;
p_BH_1 = BER_HRD_1;  
p_BH_2 = BER_HRD_2;  
p_BH_3 = BER_HRD_3;  
p_BH_4 = BER_HRD_4;  

p_BS_1 = BER_SFT_1;
p_BS_2 = BER_SFT_2;
p_BS_3 = BER_SFT_3;
p_BS_4 = BER_SFT_4;

p_WH_1 = WER_HRD_1;  
p_WH_2 = WER_HRD_2;  
p_WH_3 = WER_HRD_3;  
p_WH_4 = WER_HRD_4;  

p_WS_1 = WER_SFT_1;   
p_WS_2 = WER_SFT_2;   
p_WS_3 = WER_SFT_3;   
p_WS_4 = WER_SFT_4;   
save results_p.mat p_BH_1 p_BH_2 p_BH_3 p_BH_4 p_BS_1 p_BS_2 p_BS_3 p_BS_4 p_WH_1 p_WH_2 p_WH_3 p_WH_4 p_WS_1 p_WS_2 p_WS_3 p_WS_4 


run_ber;
q_BH_1 = BER_HRD_1;  
q_BH_2 = BER_HRD_2;  
q_BH_3 = BER_HRD_3;  
q_BH_4 = BER_HRD_4;  

q_BS_1 = BER_SFT_1;
q_BS_2 = BER_SFT_2;
q_BS_3 = BER_SFT_3;
q_BS_4 = BER_SFT_4;

q_WH_1 = WER_HRD_1;  
q_WH_2 = WER_HRD_2;  
q_WH_3 = WER_HRD_3;  
q_WH_4 = WER_HRD_4;  

q_WS_1 = WER_SFT_1;   
q_WS_2 = WER_SFT_2;   
q_WS_3 = WER_SFT_3;   
q_WS_4 = WER_SFT_4;   
save results_q.mat q_BH_1 q_BH_2 q_BH_3 q_BH_4 q_BS_1 q_BS_2 q_BS_3 q_BS_4 q_WH_1 q_WH_2 q_WH_3 q_WH_4 q_WS_1 q_WS_2 q_WS_3 q_WS_4 

run_ber;
r_BH_1 = BER_HRD_1;  
r_BH_2 = BER_HRD_2;  
r_BH_3 = BER_HRD_3;  
r_BH_4 = BER_HRD_4;  

r_BS_1 = BER_SFT_1;
r_BS_2 = BER_SFT_2;
r_BS_3 = BER_SFT_3;
r_BS_4 = BER_SFT_4;

r_WH_1 = WER_HRD_1;  
r_WH_2 = WER_HRD_2;  
r_WH_3 = WER_HRD_3;  
r_WH_4 = WER_HRD_4;  

r_WS_1 = WER_SFT_1;   
r_WS_2 = WER_SFT_2;   
r_WS_3 = WER_SFT_3;   
r_WS_4 = WER_SFT_4;   
save results_r.mat r_BH_1 r_BH_2 r_BH_3 r_BH_4 r_BS_1 r_BS_2 r_BS_3 r_BS_4 r_WH_1 r_WH_2 r_WH_3 r_WH_4 r_WS_1 r_WS_2 r_WS_3 r_WS_4 

run_ber;
s_BH_1 = BER_HRD_1;  
s_BH_2 = BER_HRD_2;  
s_BH_3 = BER_HRD_3;  
s_BH_4 = BER_HRD_4;  

s_BS_1 = BER_SFT_1;
s_BS_2 = BER_SFT_2;
s_BS_3 = BER_SFT_3;
s_BS_4 = BER_SFT_4;

s_WH_1 = WER_HRD_1;  
s_WH_2 = WER_HRD_2;  
s_WH_3 = WER_HRD_3;  
s_WH_4 = WER_HRD_4;  

s_WS_1 = WER_SFT_1;   
s_WS_2 = WER_SFT_2;   
s_WS_3 = WER_SFT_3;   
s_WS_4 = WER_SFT_4;   
save results_s.mat s_BH_1 s_BH_2 s_BH_3 s_BH_4 s_BS_1 s_BS_2 s_BS_3 s_BS_4 s_WH_1 s_WH_2 s_WH_3 s_WH_4 s_WS_1 s_WS_2 s_WS_3 s_WS_4 

run_ber;
t_BH_1 = BER_HRD_1;  
t_BH_2 = BER_HRD_2;  
t_BH_3 = BER_HRD_3;  
t_BH_4 = BER_HRD_4;  

t_BS_1 = BER_SFT_1;
t_BS_2 = BER_SFT_2;
t_BS_3 = BER_SFT_3;
t_BS_4 = BER_SFT_4;

t_WH_1 = WER_HRD_1;  
t_WH_2 = WER_HRD_2;  
t_WH_3 = WER_HRD_3;  
t_WH_4 = WER_HRD_4;  

t_WS_1 = WER_SFT_1;   
t_WS_2 = WER_SFT_2;   
t_WS_3 = WER_SFT_3;   
t_WS_4 = WER_SFT_4;   
save results_t.mat t_BH_1 t_BH_2 t_BH_3 t_BH_4 t_BS_1 t_BS_2 t_BS_3 t_BS_4 t_WH_1 t_WH_2 t_WH_3 t_WH_4 t_WS_1 t_WS_2 t_WS_3 t_WS_4 

run_ber;
u_BH_1 = BER_HRD_1;  
u_BH_2 = BER_HRD_2;  
u_BH_3 = BER_HRD_3;  
u_BH_4 = BER_HRD_4;  

u_BS_1 = BER_SFT_1;
u_BS_2 = BER_SFT_2;
u_BS_3 = BER_SFT_3;
u_BS_4 = BER_SFT_4;

u_WH_1 = WER_HRD_1;  
u_WH_2 = WER_HRD_2;  
u_WH_3 = WER_HRD_3;  
u_WH_4 = WER_HRD_4;  

u_WS_1 = WER_SFT_1;   
u_WS_2 = WER_SFT_2;   
u_WS_3 = WER_SFT_3;   
u_WS_4 = WER_SFT_4;   
save results_u.mat u_BH_1 u_BH_2 u_BH_3 u_BH_4 u_BS_1 u_BS_2 u_BS_3 u_BS_4 u_WH_1 u_WH_2 u_WH_3 u_WH_4 u_WS_1 u_WS_2 u_WS_3 u_WS_4 

run_ber;
v_BH_1 = BER_HRD_1;  
v_BH_2 = BER_HRD_2;  
v_BH_3 = BER_HRD_3;  
v_BH_4 = BER_HRD_4;  

v_BS_1 = BER_SFT_1;
v_BS_2 = BER_SFT_2;
v_BS_3 = BER_SFT_3;
v_BS_4 = BER_SFT_4;

v_WH_1 = WER_HRD_1;  
v_WH_2 = WER_HRD_2;  
v_WH_3 = WER_HRD_3;  
v_WH_4 = WER_HRD_4;  

v_WS_1 = WER_SFT_1;   
v_WS_2 = WER_SFT_2;   
v_WS_3 = WER_SFT_3;   
v_WS_4 = WER_SFT_4;   
save results_v.mat v_BH_1 v_BH_2 v_BH_3 v_BH_4 v_BS_1 v_BS_2 v_BS_3 v_BS_4 v_WH_1 v_WH_2 v_WH_3 v_WH_4 v_WS_1 v_WS_2 v_WS_3 v_WS_4 

run_ber;
w_BH_1 = BER_HRD_1;  
w_BH_2 = BER_HRD_2;  
w_BH_3 = BER_HRD_3;  
w_BH_4 = BER_HRD_4;  

w_BS_1 = BER_SFT_1;
w_BS_2 = BER_SFT_2;
w_BS_3 = BER_SFT_3;
w_BS_4 = BER_SFT_4;

w_WH_1 = WER_HRD_1;  
w_WH_2 = WER_HRD_2;  
w_WH_3 = WER_HRD_3;  
w_WH_4 = WER_HRD_4;  

w_WS_1 = WER_SFT_1;   
w_WS_2 = WER_SFT_2;   
w_WS_3 = WER_SFT_3;   
w_WS_4 = WER_SFT_4;   
save results_w.mat w_BH_1 w_BH_2 w_BH_3 w_BH_4 w_BS_1 w_BS_2 w_BS_3 w_BS_4 w_WH_1 w_WH_2 w_WH_3 w_WH_4 w_WS_1 w_WS_2 w_WS_3 w_WS_4 

run_ber;
x_BH_1 = BER_HRD_1;  
x_BH_2 = BER_HRD_2;  
x_BH_3 = BER_HRD_3;  
x_BH_4 = BER_HRD_4;  

x_BS_1 = BER_SFT_1;
x_BS_2 = BER_SFT_2;
x_BS_3 = BER_SFT_3;
x_BS_4 = BER_SFT_4;

x_WH_1 = WER_HRD_1;  
x_WH_2 = WER_HRD_2;  
x_WH_3 = WER_HRD_3;  
x_WH_4 = WER_HRD_4;  

x_WS_1 = WER_SFT_1;   
x_WS_2 = WER_SFT_2;   
x_WS_3 = WER_SFT_3;   
x_WS_4 = WER_SFT_4;   
save results_x.mat x_BH_1 x_BH_2 x_BH_3 x_BH_4 x_BS_1 x_BS_2 x_BS_3 x_BS_4 x_WH_1 x_WH_2 x_WH_3 x_WH_4 x_WS_1 x_WS_2 x_WS_3 x_WS_4 

run_ber;
y_BH_1 = BER_HRD_1;  
y_BH_2 = BER_HRD_2;  
y_BH_3 = BER_HRD_3;  
y_BH_4 = BER_HRD_4;  

y_BS_1 = BER_SFT_1;
y_BS_2 = BER_SFT_2;
y_BS_3 = BER_SFT_3;
y_BS_4 = BER_SFT_4;

y_WH_1 = WER_HRD_1;  
y_WH_2 = WER_HRD_2;  
y_WH_3 = WER_HRD_3;  
y_WH_4 = WER_HRD_4;  

y_WS_1 = WER_SFT_1;   
y_WS_2 = WER_SFT_2;   
y_WS_3 = WER_SFT_3;   
y_WS_4 = WER_SFT_4;   
save results_y.mat y_BH_1 y_BH_2 y_BH_3 y_BH_4 y_BS_1 y_BS_2 y_BS_3 y_BS_4 y_WH_1 y_WH_2 y_WH_3 y_WH_4 y_WS_1 y_WS_2 y_WS_3 y_WS_4 

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
BH_1 =    ( a_BH_1 + f_BH_1 + k_BH_1 + p_BH_1 + u_BH_1 + ...
            b_BH_1 + g_BH_1 + l_BH_1 + q_BH_1 + v_BH_1 + ...
            c_BH_1 + h_BH_1 + m_BH_1 + r_BH_1 + w_BH_1 + ...
            d_BH_1 + i_BH_1 + n_BH_1 + s_BH_1 + x_BH_1 + ...
            e_BH_1 + j_BH_1 + o_BH_1 + t_BH_1 + y_BH_1 ) / 25;

BH_2 =    ( a_BH_2 + f_BH_2 + k_BH_2 + p_BH_2 + u_BH_2 + ...
            b_BH_2 + g_BH_2 + l_BH_2 + q_BH_2 + v_BH_2 + ...
            c_BH_2 + h_BH_2 + m_BH_2 + r_BH_2 + w_BH_2 + ...
            d_BH_2 + i_BH_2 + n_BH_2 + s_BH_2 + x_BH_2 + ...
            e_BH_2 + j_BH_2 + o_BH_2 + t_BH_2 + y_BH_2 ) / 25;        

BH_3 =    ( a_BH_3 + f_BH_3 + k_BH_3 + p_BH_3 + u_BH_3 + ...
            b_BH_3 + g_BH_3 + l_BH_3 + q_BH_3 + v_BH_3 + ...
            c_BH_3 + h_BH_3 + m_BH_3 + r_BH_3 + w_BH_3 + ...
            d_BH_3 + i_BH_3 + n_BH_3 + s_BH_3 + x_BH_3 + ...
            e_BH_3 + j_BH_3 + o_BH_3 + t_BH_3 + y_BH_3 ) / 25;        

BH_4 =    ( a_BH_4 + f_BH_4 + k_BH_4 + p_BH_4 + u_BH_4 + ...
            b_BH_4 + g_BH_4 + l_BH_4 + q_BH_4 + v_BH_4 + ...
            c_BH_4 + h_BH_4 + m_BH_4 + r_BH_4 + w_BH_4 + ...
            d_BH_4 + i_BH_4 + n_BH_4 + s_BH_4 + x_BH_4 + ...
            e_BH_4 + j_BH_4 + o_BH_4 + t_BH_4 + y_BH_4 ) / 25;        
        
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%      
% BER SOFT
BS_1 =    ( a_BS_1 + f_BS_1 + k_BS_1 + p_BS_1 + u_BS_1 + ...
            b_BS_1 + g_BS_1 + l_BS_1 + q_BS_1 + v_BS_1 + ...
            c_BS_1 + h_BS_1 + m_BS_1 + r_BS_1 + w_BS_1 + ...
            d_BS_1 + i_BS_1 + n_BS_1 + s_BS_1 + x_BS_1 + ...
            e_BS_1 + j_BS_1 + o_BS_1 + t_BS_1 + y_BS_1 ) / 25;

BS_2 =    ( a_BS_2 + f_BS_2 + k_BS_2 + p_BS_2 + u_BS_2 + ...
            b_BS_2 + g_BS_2 + l_BS_2 + q_BS_2 + v_BS_2 + ...
            c_BS_2 + h_BS_2 + m_BS_2 + r_BS_2 + w_BS_2 + ...
            d_BS_2 + i_BS_2 + n_BS_2 + s_BS_2 + x_BS_2 + ...
            e_BS_2 + j_BS_2 + o_BS_2 + t_BS_2 + y_BS_2 ) / 25;        

BS_3 =    ( a_BS_3 + f_BS_3 + k_BS_3 + p_BS_3 + u_BS_3 + ...
            b_BS_3 + g_BS_3 + l_BS_3 + q_BS_3 + v_BS_3 + ...
            c_BS_3 + h_BS_3 + m_BS_3 + r_BS_3 + w_BS_3 + ...
            d_BS_3 + i_BS_3 + n_BS_3 + s_BS_3 + x_BS_3 + ...
            e_BS_3 + j_BS_3 + o_BS_3 + t_BS_3 + y_BS_3 ) / 25;        

BS_4 =    ( a_BS_4 + f_BS_4 + k_BS_4 + p_BS_4 + u_BS_4 + ...
            b_BS_4 + g_BS_4 + l_BS_4 + q_BS_4 + v_BS_4 + ...
            c_BS_4 + h_BS_4 + m_BS_4 + r_BS_4 + w_BS_4 + ...
            d_BS_4 + i_BS_4 + n_BS_4 + s_BS_4 + x_BS_4 + ...
            e_BS_4 + j_BS_4 + o_BS_4 + t_BS_4 + y_BS_4 ) / 25;        
        
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%      
% WER HARD
WH_1 =    ( a_WH_1 + f_WH_1 + k_WH_1 + p_WH_1 + u_WH_1 + ...
            b_WH_1 + g_WH_1 + l_WH_1 + q_WH_1 + v_WH_1 + ...
            c_WH_1 + h_WH_1 + m_WH_1 + r_WH_1 + w_WH_1 + ...
            d_WH_1 + i_WH_1 + n_WH_1 + s_WH_1 + x_WH_1 + ...
            e_WH_1 + j_WH_1 + o_WH_1 + t_WH_1 + y_WH_1 ) / 25;

WH_2 =    ( a_WH_2 + f_WH_2 + k_WH_2 + p_WH_2 + u_WH_2 + ...
            b_WH_2 + g_WH_2 + l_WH_2 + q_WH_2 + v_WH_2 + ...
            c_WH_2 + h_WH_2 + m_WH_2 + r_WH_2 + w_WH_2 + ...
            d_WH_2 + i_WH_2 + n_WH_2 + s_WH_2 + x_WH_2 + ...
            e_WH_2 + j_WH_2 + o_WH_2 + t_WH_2 + y_WH_2 ) / 25;        

WH_3 =    ( a_WH_3 + f_WH_3 + k_WH_3 + p_WH_3 + u_WH_3 + ...
            b_WH_3 + g_WH_3 + l_WH_3 + q_WH_3 + v_WH_3 + ...
            c_WH_3 + h_WH_3 + m_WH_3 + r_WH_3 + w_WH_3 + ...
            d_WH_3 + i_WH_3 + n_WH_3 + s_WH_3 + x_WH_3 + ...
            e_WH_3 + j_WH_3 + o_WH_3 + t_WH_3 + y_WH_3 ) / 25;        

WH_4 =    ( a_WH_4 + f_WH_4 + k_WH_4 + p_WH_4 + u_WH_4 + ...
            b_WH_4 + g_WH_4 + l_WH_4 + q_WH_4 + v_WH_4 + ...
            c_WH_4 + h_WH_4 + m_WH_4 + r_WH_4 + w_WH_4 + ...
            d_WH_4 + i_WH_4 + n_WH_4 + s_WH_4 + x_WH_4 + ...
            e_WH_4 + j_WH_4 + o_WH_4 + t_WH_4 + y_WH_4 ) / 25;        
        
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%      
% WER SOFT
WS_1 =    ( a_WS_1 + f_WS_1 + k_WS_1 + p_WS_1 + u_WS_1 + ...
            b_WS_1 + g_WS_1 + l_WS_1 + q_WS_1 + v_WS_1 + ...
            c_WS_1 + h_WS_1 + m_WS_1 + r_WS_1 + w_WS_1 + ...
            d_WS_1 + i_WS_1 + n_WS_1 + s_WS_1 + x_WS_1 + ...
            e_WS_1 + j_WS_1 + o_WS_1 + t_WS_1 + y_WS_1 ) / 25;

WS_2 =    ( a_WS_2 + f_WS_2 + k_WS_2 + p_WS_2 + u_WS_2 + ...
            b_WS_2 + g_WS_2 + l_WS_2 + q_WS_2 + v_WS_2 + ...
            c_WS_2 + h_WS_2 + m_WS_2 + r_WS_2 + w_WS_2 + ...
            d_WS_2 + i_WS_2 + n_WS_2 + s_WS_2 + x_WS_2 + ...
            e_WS_2 + j_WS_2 + o_WS_2 + t_WS_2 + y_WS_2 ) / 25;        

WS_3 =    ( a_WS_3 + f_WS_3 + k_WS_3 + p_WS_3 + u_WS_3 + ...
            b_WS_3 + g_WS_3 + l_WS_3 + q_WS_3 + v_WS_3 + ...
            c_WS_3 + h_WS_3 + m_WS_3 + r_WS_3 + w_WS_3 + ...
            d_WS_3 + i_WS_3 + n_WS_3 + s_WS_3 + x_WS_3 + ...
            e_WS_3 + j_WS_3 + o_WS_3 + t_WS_3 + y_WS_3 ) / 25;        

WS_4 =    ( a_WS_4 + f_WS_4 + k_WS_4 + p_WS_4 + u_WS_4 + ...
            b_WS_4 + g_WS_4 + l_WS_4 + q_WS_4 + v_WS_4 + ...
            c_WS_4 + h_WS_4 + m_WS_4 + r_WS_4 + w_WS_4 + ...
            d_WS_4 + i_WS_4 + n_WS_4 + s_WS_4 + x_WS_4 + ...
            e_WS_4 + j_WS_4 + o_WS_4 + t_WS_4 + y_WS_4 ) / 25;        
            
      
save results2500_block.mat BH_1 BH_2 BH_3 BH_4 BS_1 BS_2 BS_3 BS_4 WH_1 WH_2 WH_3 WH_4 WH_1 WH_2 WH_3 WH_4 WS_1 WS_2 WS_3 WS_4 
