
% frist create a datastructure which we will export to a json file

% note that we expact that all data in benchmark is nondim
benchmark.subject_height    = 5;
benchmark.subject_mass      = 250; % to do check in publication
benchmark.prop_leg_length   = 0.5; % optional
benchmark.leglength         = benchmark.subject_height *  benchmark.prop_leg_length;

benchmark.grf_r = randn(100,3);
benchmark.grf_l = randn(100,3);
benchmark.grf_r_std = randn(100,3);
benchmark.grf_l_std = randn(100,3);

benchmark.id                = randn(100,9);
benchmark.id_std            = randn(100,9);
benchmark.ik                = randn(100,9);
benchmark.ik_std            = randn(100,9);
benchmark.Pmetab_mean       = 400; % no data
benchmark.stride_frequency  = 0.2;
benchmark.identifier        = 'big_friendly_giant_2ms';

% header files
benchmark.ik_header = {'a','b','c','d','e','f','g','h','i'};
benchmark.id_header = {'a','b','c','d','e','f','g','h','i'};
benchmark.grf_header = {'Fx','Fy','Fz'};

% walking condition properties
benchmark.slope = 0;
benchmark.speed =  2;
benchmark.added_mass = 0;
bechmark.location_added_mass = [];
benchmark.study = 'dahl1982';

% convert benchmark structure to json file
outfolder = fileparts(pwd);
json_filename = fullfile(outfolder,benchmark.study,[benchmark.identifier '.json']);
write_json(benchmark,json_filename);
read_json(json_filename);