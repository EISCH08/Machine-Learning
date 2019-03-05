load sphere_data;
%%%

%newsom arguments
% 1. Representative input data that is used for node initialization.
% 2. The size of the network (10 by 10 in this case).
% 3. The map topology (hextop will produce a hexagonal grid where each node
% has six neighbors).
% 4. The distance function to be used during training (linkdist is the number
% of hops from one node to another).
% 5. The number of training epochs before the neighborhood size has shrunk
% to size 1 (i.e., the number of epochs in the ordering phase).
% 6. The initial neighborhood size.

%P10
som = newsom(P10, [10 10], 'hextop', 'linkdist', 100, 5);

[som_P10, stats] = train(som, P10);

%%
plotsomhits(som_P10, P10(:,1:100))
%%
% Winning nodes for F1.
plotsomhits(som_P10, P10(:,101:200)) % Winning nodes for F2.
%%
% Plot the nodes of som_P10 in the input space.
plotsom(som_P10.iw{1,1}, som_P10.layers{1}.distances)
hold on
% Plot the data points in P10.
plot3(P10(1,:), P10(2,:), P10(3,:), '+k')

%%
som = newsom(P10, [10 10], 'hextop', 'linkdist', 100, 5);

[som_P10, stats] = train(som, P10);

som = newsom(P20, [10 10], 'hextop', 'linkdist', 100, 5);

[som_P20, stats] = train(som, P20);

som = newsom(P30, [10 10], 'hextop', 'linkdist', 100, 5);

[som_P30, stats] = train(som, P30);

%%
%P10 plots
plotsomhits(som_P10, P10(:,1:100))
%%
% Winning nodes for F1.
plotsomhits(som_P10, P10(:,101:200))

%%

%P20 plots
plotsomhits(som_P20, P20(:,1:100))
%%
% Winning nodes for F1.
plotsomhits(som_P20, P20(:,101:200))

%%
%P30
plotsomhits(som_P30, P30(:,1:100))
%%
% Winning nodes for F1.
plotsomhits(som_P30, P30(:,101:200))

%%
plotsomhits(som_P10, P30(:,1:100))
%%
plotsomhits(som_P30, P10(:,1:100))
%%
plotsom(som_P30.iw{1,1}, som_P30.layers{1}.distances)
hold on
% Plot the data points in P10.
plot3(P10(1,:), P10(2,:), P10(3,:), '+k')
%%
plotsom(som_P10.iw{1,1}, som_P10.layers{1}.distances)
hold on
% Plot the data points in P10.
plot3(P30(1,:), P30(2,:), P30(3,:), '+k')
