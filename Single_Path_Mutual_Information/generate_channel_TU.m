% Generate Typical Urban channels.

function [out] = generate_channel_TU(N, num, state)

randn('state',state);

sigma_sh_dB = 8;
bandwidth = 800e3;
t = 1e-6 * [0 0.1 0.3 0.5 0.8 1.1 1.3 1.7 2.3 3.1 3.2 5.0].';

% Known reference distance received power.
P_ref = 1;

for (lcv1 = 1:num)

    % Shadowing gain.
    g_sh_dB = sqrt(sigma_sh_dB) * randn(1,1);
    g_sh = 10 .^ (g_sh_dB/10);
    

    % Multipath gain.    
    gamma(1:12) = [
        sqrt(0.092/2) * (randn + j * randn);
        sqrt(0.115/2) * (randn + j * randn);
        sqrt(0.231/2) * (randn + j * randn);
        sqrt(0.127/2) * (randn + j * randn);
        sqrt(0.115/2) * (randn + j * randn);
        sqrt(0.074/2) * (randn + j * randn);
        sqrt(0.046/2) * (randn + j * randn);
        sqrt(0.074/2) * (randn + j * randn);
        sqrt(0.051/2) * (randn + j * randn);
        sqrt(0.032/2) * (randn + j * randn);
        sqrt(0.018/2) * (randn + j * randn);
        sqrt(0.025/2) * (randn + j * randn)
    ].';

    n = (0:(N-1)).';
    delta_f = bandwidth / N;
    multipath_ch = zeros(N,1);
    for (lcv2 = 1:12)
        multipath_ch = multipath_ch + gamma(lcv2) * exp( -1*j*2*pi * n * delta_f * t(lcv2) ); 
    end % for (lcv2 = 1:12)
    multipath = multipath_ch .* conj(multipath_ch);

    % Combine to get the channels.
    out(1:N,lcv1) = P_ref * g_sh .* multipath;
    
end % for (lcv1 = 1:num)

