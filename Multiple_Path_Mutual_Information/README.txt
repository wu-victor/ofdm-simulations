This programs simulates mutual information.

(1) run_main.m generates a set of Hilly Terrain or Typical Urban channels.
(2) It then enters a loop doing the mutual information simulations for each SNR value.
(3) For each SNR value, it calls main_program.m
(4) In main_program.m, it prepares the necessary Pct and Peq values for the four cases (m = 1, 2, 3 and 4 relays).  It then calls mutual.m to calculate the mutual information.  This is done on a set of channel values.  So the the result is that we get a set of mutual informations.  They are then averaged.