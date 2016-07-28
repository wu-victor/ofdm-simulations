% Generate Hilly Terrain channels.

function [out] = generate_channel_HT(N, num, state)

randn('state',state);

sigma_sh_dB = 8;
bandwidth = 800e3;
t = 1e-6 * [0 0.1 0.3 0.5 0.7 1.0 1.3 15.0 15.2 15.7 17.2 20.0].';

% Known reference distance received power.
P_ref = 1;

for (lcv1 = 1:num)

    % Shadowing gain.
    g_sh_dB = sqrt(sigma_sh_dB) * randn(1,1);
    g_sh = 10 .^ (g_sh_dB/10);
    

    % Multipath gain.    
    gamma(1:12) = [
        sqrt(0.026/2) * (randn + j * randn);
        sqrt(0.042/2) * (randn + j * randn);
        sqrt(0.066/2) * (randn + j * randn);
        sqrt(0.105/2) * (randn + j * randn);
        sqrt(0.263/2) * (randn + j * randn);
        sqrt(0.263/2) * (randn + j * randn);
        sqrt(0.105/2) * (randn + j * randn);
        sqrt(0.042/2) * (randn + j * randn);
        sqrt(0.034/2) * (randn + j * randn);
        sqrt(0.026/2) * (randn + j * randn);
        sqrt(0.016/2) * (randn + j * randn);
        sqrt(0.011/2) * (randn + j * randn)
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

