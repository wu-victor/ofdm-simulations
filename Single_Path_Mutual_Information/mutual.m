% Mutual information formula.

function out = mutual(N, m, SNR, b_0, b_1, b_2, b_3, b_4, P_1, P_2, P_3, P_4);

if (m == 1)
    Z = (b_0.*P_1.* b_1) ./ ...
             (P_1.*b_1 + 1);
elseif (m == 2)
    Z = (b_0.*P_1.*b_1.*P_2.*b_2) ./ ...
             (P_1.*b_1.*P_2.*b_2 + P_2.*b_2 + 1);
elseif (m == 3)
    Z = (b_0.*P_1.*b_1.*P_2.*b_2.*P_3.*b_3) ./ ...
             (P_1.*b_1.*P_2.*b_2.*P_3.*b_3 + P_2.*b_2.*P_3.*b_3 + P_3.*b_3 + 1);
else % (m == 4) 
    Z = (b_0.*P_1.*b_1.*P_2.*b_2.*P_3.*b_3.*P_4.*b_4) ./ ...
             (P_1.*b_1.*P_2.*b_2.*P_3.*b_3.*P_4.*b_4 + P_2.*b_2.*P_3.*b_3.*P_4.*b_4 + P_3.*b_3.*P_4.*b_4 + P_4.*b_4 + 1);
end

e_N = ones(N,1);
out = (1/N) * e_N' * ( log2(1 + SNR * Z) );
