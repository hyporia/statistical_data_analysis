N=500;
figure;
hold on;
x=randn(1, N);
y=randn(1, N);
h = scatter(x, y, 'r.')
CORR = corrcoef(x, y)
title('Correlation coef = ' + string(CORR(1, 2)))