%%

%Task 2

% Loads in the 3D RGB data sets containing 4096 color samples evenly spread
% in the RGB space

load rgb_data

%%

% Training the network with different settings for the number of epochs in
% the ordering phase and tuning phase and initial neighborhood size

%100 in the ordering phase, 100 in the tuning phase, initial neighborhood
%size of 5

som = newsom(RGB, [10 10], 'gridtop', 'linkdist', 100, 5)
som.trainParam.epochs = 200

%%

[som, stats] = train(som, RGB)

%%

%950 in the ordering phase, 50 in the tuning phase, initial neighborhood
%size of 5

som = newsom(RGB, [10 10], 'gridtop', 'linkdist', 2400, 1);

som.trainParam.epochs = 3000;

%%

[som, stats] = train(som, RGB)

%%

% Plot by colors
plot_colors(som)

