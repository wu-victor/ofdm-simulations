% Generate Typical Urban channels.

function [o1, o2, o3, o4, o5, o6, o7, o8] = generate_channels_TU(N, NUM_RAND);

display('Generating bsr_1.');
state = 0;
o1 = generate_channel_TU(N, NUM_RAND, state);

display('Generating bsr_2.');
state = 2000;
o2 = generate_channel_TU(N, NUM_RAND, state);

display('Generating bsr_3.');
state = 4000;
o3 = generate_channel_TU(N, NUM_RAND, state);

display('Generating bsr_4.');
state = 6000;
o4 = generate_channel_TU(N, NUM_RAND, state);

display('Generating brd_1.');
state = 1000;
o5 = generate_channel_TU(N, NUM_RAND, state);

display('Generating brd_2.');
state = 3000;
o6 = generate_channel_TU(N, NUM_RAND, state);

display('Generating brd_3.');
state = 5000;
o7 = generate_channel_TU(N, NUM_RAND, state);

display('Generating brd_4.');
state = 7000;
o8 = generate_channel_TU(N, NUM_RAND, state);