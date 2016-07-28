clear all;

N = 128;
NUM_RAND = 1000;

display('Generating channels.');
[bsr_1, bsr_2, bsr_3, bsr_4, brd_1, brd_2, brd_3, brd_4] = generate_channels_HT(N, NUM_RAND);
%[bsr_1, bsr_2, bsr_3, bsr_4, brd_1, brd_2, brd_3, brd_4] = generate_channels_TU(N, NUM_RAND);
display('Done generating channels.');
display('Program Start.');

count = 0;
for (SNR_DB = 0:3:24)
    
    main_program;
    count = count + 1;
   
    CT_1(count) = ct_1
    CT_2(count) = ct_2
    CT_3(count) = ct_3
    CT_4(count) = ct_4
    
    EQ_1(count) = eq_1
    EQ_2(count) = eq_2
    EQ_3(count) = eq_3
    EQ_4(count) = eq_4
end

save results.mat CT_1 EQ_1 CT_2 EQ_2 CT_3 EQ_3 CT_4 EQ_4 




