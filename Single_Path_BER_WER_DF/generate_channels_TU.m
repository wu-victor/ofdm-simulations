function [o1, o2, o3, o4, o5] = generate_channels_TU(N, NUM_RAND)

display('Generating h_0.');
o1 = generate_channel_TU(N, NUM_RAND);

display('Generating h_1.');
o2 = generate_channel_TU(N, NUM_RAND);

display('Generating h_2.');
o3 = generate_channel_TU(N, NUM_RAND);

display('Generating h_3.');
o4 = generate_channel_TU(N, NUM_RAND);

display('Generating h_4.');
o5 = generate_channel_TU(N, NUM_RAND);