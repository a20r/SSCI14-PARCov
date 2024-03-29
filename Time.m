function [] = Time()

Means = [0.034998   0.207275   0.355025   0.480530   0.613639   0.732896]
StDs = [0.0062326   0.0246181   0.0413624   0.0594123   0.0644670   0.0893231]
quads = [1    6   11   16   21   26]

clf;
hold on;

set(gca, 'position', [0.1, 0.1, 0.8, 0.5]);
set(gca, 'fontsize', 20, 'fontname', 'Helvetica');
set(gca, 'xtick', quads);
set(gca, 'xlim', [0,27]);
%set(gca, 'ytick', 0:10:100);
%set(gca, 'ylim', [0, 103]);

grid on;
xlabel('nr. quadcopters');
ylabel('mean time per iteration [s]');

%plot(quads, Means, '-ro', 'markersize', 15, 'linewidth', 1.7);

#plot(quads, Means,  '-ro', 'markersize', 15, 'linewidth', 1.7);
h =errorbar(quads, Means, (0.5 * StDs), '-ro');
set(h, 'linewidth', 1.7);
set(h, 'markersize', 15);

saveas(gcf, 'kot.pdf', 'pdf');
system(['pdfcrop kot.pdf figResTimePerIter.pdf']);


end
