This program simulates BER and WER for Decode-and-Forward.

(1) run_ber.m sets up the channels and noises for the simulation.
(2) For each SNR value, run_ber.m calls ber.m
(3) ber.m sets up the signal, encodes it, sends it through the channel, and decodes the result.  It uses decode_smbs.m and encode_info.m to implement the decoding and re-encoding at each relay.
(4) decode_smbs.m vdec_sft.m and vdec_hrd.m to the Viterbi decoding.
(5) The error bits are counted and averaged to calculate BER and WER.

Note:  I used run_run_ber.m when I had simulate a large number of trials. run_run_ber.m repeatedly calls run_ber.m and averages the results.