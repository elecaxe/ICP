for dataset = {'freiburg1_desk', 'freiburg1_desk2', 'freiburg1_floor', ...
  'freiburg1_room', 'freiburg2_360_hemisphere', 'freiburg2_360_kidnap', ...
  'freiburg2_desk', 'freiburg2_large_no_loop', 'freiburg2_large_with_loop', ...
  'freiburg3_long_office_household'}
  load(['../data/tum_' dataset{1} '.mat'])
  load(['../data/tum_' dataset{1} '_poses.mat'])
  gen_frame_pairs
  all_overlaps.(dataset{1}) = overlaps;
end
