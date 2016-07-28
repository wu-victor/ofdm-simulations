function [o1, o2, o3, o4, o5, o6, o7, o8] = generate_channels_HT(N, NUM_RAND);

display('Generating hsr_1.');
o1 = generate_channel_HT(N, NUM_RAND);
display('Generating hrd_1.');
o5 = generate_channel_HT(N, NUM_RAND);

display('Generating hsr_2.');
o2 = generate_channel_HT(N, NUM_RAND);
display('Generating hrd_2.');
o6 = generate_channel_HT(N, NUM_RAND);

display('Generating hsr_3.');
o3 = generate_channel_HT(N, NUM_RAND);
curr_state = randn('state');
randn('state',sum(100*clock));
display('Generating hrd_3.');
o7 = generate_channel_HT(N, NUM_RAND);

display('Generating hsr_4.');
o4 = generate_channel_HT(N, NUM_RAND);
display('Generating hrd_4.');
o8 = generate_channel_HT(N, NUM_RAND);

randn('state', curr_state);