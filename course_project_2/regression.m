X_data = [Health Family Economy Freedom DystopiaResidental];
Y_data = HappinessScore;
mdl = fitlm(X_data, Y_data)
figure;hold on;
plot(mdl);
mdl.Rsquared.Ordinary