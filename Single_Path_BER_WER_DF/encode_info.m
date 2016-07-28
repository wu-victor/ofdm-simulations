function out = encode_info(info, NUM_RAND)

N = 128;

[num_rows, num_cols] = size(info);
if ( (num_rows ~= NUM_RAND) || (num_cols ~= 83) )
    display('Error in encode_info.');
    return;
end

% Set last 2 bits to zero because using a convolutional code.
info_bits = info;
info_bits(1:NUM_RAND,84:85) = zeros(NUM_RAND,2);

% Encode the bits using a convolutional encoder.
trs = poly2trellis(3, [7 7 6]);
for (lcv = 1 : NUM_RAND)
    if ( mod(lcv, 10)==0 )
    	display('Encoding bits for:')
    	trial_number = lcv
    end
    enc_bits(lcv, 1:255) = convenc(info_bits(lcv,1:85), trs, 0) * 2 - 1;
end

% Pad with one zero to make the sequence 256 bits.
enc_bits(1:NUM_RAND,256) = zeros(NUM_RAND,1);

% Interleave the encoded bits.
leav_sp = 2*N / 8;
leav_bits(1:NUM_RAND, 0*leav_sp+1 : 1*leav_sp) = enc_bits(1:NUM_RAND, 1 : 8 : 2*N);
leav_bits(1:NUM_RAND, 1*leav_sp+1 : 2*leav_sp) = enc_bits(1:NUM_RAND, 2 : 8 : 2*N);
leav_bits(1:NUM_RAND, 2*leav_sp+1 : 3*leav_sp) = enc_bits(1:NUM_RAND, 3 : 8 : 2*N);
leav_bits(1:NUM_RAND, 3*leav_sp+1 : 4*leav_sp) = enc_bits(1:NUM_RAND, 4 : 8 : 2*N);
leav_bits(1:NUM_RAND, 4*leav_sp+1 : 5*leav_sp) = enc_bits(1:NUM_RAND, 5 : 8 : 2*N);
leav_bits(1:NUM_RAND, 5*leav_sp+1 : 6*leav_sp) = enc_bits(1:NUM_RAND, 6 : 8 : 2*N);;
leav_bits(1:NUM_RAND, 6*leav_sp+1 : 7*leav_sp) = enc_bits(1:NUM_RAND, 7 : 8 : 2*N);
leav_bits(1:NUM_RAND, 7*leav_sp+1 : 8*leav_sp) = enc_bits(1:NUM_RAND, 8 : 8 : 2*N);

% Modulate the bits onto QPSK symbols and place them in the OFDM
% subcarriers.  Take the transpose.
re_bits = leav_bits(1:NUM_RAND, 1 : 2 : 2*N);
im_bits = leav_bits(1:NUM_RAND, 2 : 2 : 2*N);
smbs = ( (re_bits + j * im_bits) / sqrt(2) ).'; % Unit power symbols.

out = smbs;
