data = [HappinessScore Health Family Economy Freedom Generosity ...
    GovTrust DystopiaResidental];
corr_mat = corrcoef(data);
xvalues = {'HappinessScore','Health','Family','Economy','Freedom','Generosity','GovTrust','DystopiaResidental'};
yvalues = {'HappinessScore','Health','Family','Economy','Freedom','Generosity','GovTrust','DystopiaResidental'};
h = heatmap(xvalues, yvalues, corr_mat);
h.Title = 'Correlation table';

sizes = size(data);
figure;hold on;
for i =2:sizes(2)
    scatter(HappinessScore', data(:,i)','.');
end
legend('Health','Family','Economy','Freedom','Generosity','GovTrust','DystopiaResidental', 'Location', 'Best');
xlabel('HappinessScore');