function out = mutual(N, m, SNR, bsr_1, bsr_2, bsr_3, bsr_4, brd_1, brd_2, brd_3, brd_4, P_1, P_2, P_3, P_4);

if (m == 1)
    Z = (P_1.*bsr_1.*brd_1) ./ (P_1.*brd_1 + 1);
elseif (m == 2)
    Z = (P_1.*bsr_1.*brd_1) ./ (P_1.*brd_1 + 1) + ...
        (P_2.*bsr_2.*brd_2) ./ (P_2.*brd_2 + 1);
elseif (m == 3)
    Z = (P_1.*bsr_1.*brd_1) ./ (P_1.*brd_1 + 1) + ...
        (P_2.*bsr_2.*brd_2) ./ (P_2.*brd_2 + 1) + ...
        (P_3.*bsr_3.*brd_3) ./ (P_3.*brd_3 + 1);
else % (m == 4) 
    Z = (P_1.*bsr_1.*brd_1) ./ (P_1.*brd_1 + 1) + ...
        (P_2.*bsr_2.*brd_2) ./ (P_2.*brd_2 + 1) + ...
        (P_3.*bsr_3.*brd_3) ./ (P_3.*brd_3 + 1) + ...
        (P_4.*bsr_4.*brd_4) ./ (P_4.*brd_4 + 1);
end

e_N = ones(N,1);
out = (1/N) * e_N' * ( log2(1 + SNR * Z) );
