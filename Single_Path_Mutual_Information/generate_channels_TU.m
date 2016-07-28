% Generate Typical Urban channels.

function [o1, o2, o3, o4, o5] = generate_channels_TU(N, NUM_RAND);

display('Generating b_0.');
state = 0;
o1 = generate_channel_TU(N, NUM_RAND, state);

display('Generating b_1.');
state = 1000;
o2 = generate_channel_TU(N, NUM_RAND, state);

display('Generating b_2.');
state = 2000;
o3 = generate_channel_TU(N, NUM_RAND, state);

display('Generating b_3.');
state = 3000;
o4 = generate_channel_TU(N, NUM_RAND, state);

display('Generating b_4.');
state = 4000;
o5 = generate_channel_TU(N, NUM_RAND, state);