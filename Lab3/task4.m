load iris_dataset.mat


som = newsom(irisInputs, [10 10], 'hextop', 'linkdist', 100, 5);
[som_iris, stats] = train(som, irisInputs);
%%
figure
plotsomhits(som_iris, irisInputs(:,1:50))
%%
figure
plotsomhits(som_iris, irisInputs(:,51:100))
%%
figure
plotsomhits(som_iris, irisInputs(:,101:150))


