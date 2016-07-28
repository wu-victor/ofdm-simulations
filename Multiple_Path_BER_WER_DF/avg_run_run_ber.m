clear all;

bh_1 = 0;   
bh_2 = 0;   
bh_3 = 0;   
bh_4 = 0;   

bs_1 = 0;  
bs_2 = 0;  
bs_3 = 0;  
bs_4 = 0;  

wh_1 = 0;    
wh_2 = 0;    
wh_3 = 0;    
wh_4 = 0;    

ws_1 = 0;   
ws_2 = 0;   
ws_3 = 0;   
ws_4 = 0;   

load results1.mat
bh_1 = bh_1 + BH_1; 
bh_2 = bh_2 + BH_2; 
bh_3 = bh_3 + BH_3; 
bh_4 = bh_4 + BH_4; 

bs_1 = bs_1 + BS_1;
bs_2 = bs_2 + BS_2;
bs_3 = bs_3 + BS_3;
bs_4 = bs_4 + BS_4;

wh_1 = wh_1 + WH_1;
wh_2 = wh_2 + WH_2;
wh_3 = wh_3 + WH_3;
wh_4 = wh_4 + WH_4;

ws_1 = ws_1 + WS_1;
ws_2 = ws_2 + WS_2;
ws_3 = ws_3 + WS_3;
ws_4 = ws_4 + WS_4;

load results2.mat
bh_1 = bh_1 + BH_1; 
bh_2 = bh_2 + BH_2; 
bh_3 = bh_3 + BH_3; 
bh_4 = bh_4 + BH_4; 

bs_1 = bs_1 + BS_1;
bs_2 = bs_2 + BS_2;
bs_3 = bs_3 + BS_3;
bs_4 = bs_4 + BS_4;

wh_1 = wh_1 + WH_1;
wh_2 = wh_2 + WH_2;
wh_3 = wh_3 + WH_3;
wh_4 = wh_4 + WH_4;

ws_1 = ws_1 + WS_1;
ws_2 = ws_2 + WS_2;
ws_3 = ws_3 + WS_3;
ws_4 = ws_4 + WS_4;

load results3.mat
bh_1 = bh_1 + BH_1; 
bh_2 = bh_2 + BH_2; 
bh_3 = bh_3 + BH_3; 
bh_4 = bh_4 + BH_4; 

bs_1 = bs_1 + BS_1;
bs_2 = bs_2 + BS_2;
bs_3 = bs_3 + BS_3;
bs_4 = bs_4 + BS_4;

wh_1 = wh_1 + WH_1;
wh_2 = wh_2 + WH_2;
wh_3 = wh_3 + WH_3;
wh_4 = wh_4 + WH_4;

ws_1 = ws_1 + WS_1;
ws_2 = ws_2 + WS_2;
ws_3 = ws_3 + WS_3;
ws_4 = ws_4 + WS_4;

load results4.mat
bh_1 = bh_1 + BH_1; 
bh_2 = bh_2 + BH_2; 
bh_3 = bh_3 + BH_3; 
bh_4 = bh_4 + BH_4; 

bs_1 = bs_1 + BS_1;
bs_2 = bs_2 + BS_2;
bs_3 = bs_3 + BS_3;
bs_4 = bs_4 + BS_4;

wh_1 = wh_1 + WH_1;
wh_2 = wh_2 + WH_2;
wh_3 = wh_3 + WH_3;
wh_4 = wh_4 + WH_4;

ws_1 = ws_1 + WS_1;
ws_2 = ws_2 + WS_2;
ws_3 = ws_3 + WS_3;
ws_4 = ws_4 + WS_4;

% Average.
bh_1 = bh_1 / 4;    
bh_2 = bh_2 / 4;    
bh_3 = bh_3 / 4;    
bh_4 = bh_4 / 4;    

bs_1 = bs_1 / 4;    
bs_2 = bs_2 / 4;  
bs_3 = bs_3 / 4;  
bs_4 = bs_4 / 4;  

wh_1 = wh_1 / 4;  
wh_2 = wh_2 / 4;  
wh_3 = wh_3 / 4;  
wh_4 = wh_4 / 4;  

ws_1 = ws_1 / 4;  
ws_2 = ws_2 / 4;  
ws_3 = ws_3 / 4;  
ws_4 = ws_4 / 4;  

save results1_4.mat bh_1 bh_2 bh_3 bh_4 bs_1 bs_2 bs_3 bs_4 wh_1 wh_2 wh_3 wh_4 ws_1 ws_2 ws_3 ws_4 

snr = 0:3:24

figure(1), semilogy(snr, bh_1, 'ko-', snr, bs_1, 'ks-');
grid
axis([0 24 0.0001 1])
set(gca, 'xtick', [0 3 6 9 12 15 18 21 24])
legend('hard', 'soft');
xlabel('SNR')
ylabel('BER')

figure(2), semilogy(snr, bh_2, 'ko-', snr, bs_2, 'ks-');
grid
axis([0 24 0.0001 1])
set(gca, 'xtick', [0 3 6 9 12 15 18 21 24])
legend('hard', 'soft');
xlabel('SNR')
ylabel('BER')

figure(3), semilogy(snr, bh_3, 'ko-', snr, bs_3, 'ks-');
grid
axis([0 24 0.0001 1])
set(gca, 'xtick', [0 3 6 9 12 15 18 21 24])
legend('hard', 'soft');
xlabel('SNR')
ylabel('BER')

figure(4), semilogy(snr, bh_4, 'ko-', snr, bs_4, 'ks-');
grid
axis([0 24 0.0001 1])
set(gca, 'xtick', [0 3 6 9 12 15 18 21 24])
legend('hard', 'soft');
xlabel('SNR')
ylabel('BER')


figure(5), semilogy(snr, wh_1, 'ko-', snr, ws_1, 'ks-');
grid
axis([0 24 0.01 1])
set(gca, 'xtick', [0 3 6 9 12 15 18 21 24])
legend('hard', 'soft');
xlabel('SNR')
ylabel('WER')

figure(6), semilogy(snr, wh_2, 'ko-', snr, ws_2, 'ks-');
grid
axis([0 24 0.01 1])
set(gca, 'xtick', [0 3 6 9 12 15 18 21 24])
legend('hard', 'soft');
xlabel('SNR')
ylabel('WER')

figure(7), semilogy(snr, wh_3, 'ko-', snr, ws_3, 'ks-');
grid
axis([0 24 0.01 1])
set(gca, 'xtick', [0 3 6 9 12 15 18 21 24])
legend('hard', 'soft');
xlabel('SNR')
ylabel('WER')

figure(8), semilogy(snr, wh_4, 'ko-', snr, ws_4, 'ks-');
grid
axis([0 24 0.01 1])
set(gca, 'xtick', [0 3 6 9 12 15 18 21 24])
legend('hard', 'soft');
xlabel('SNR')
ylabel('WER')
