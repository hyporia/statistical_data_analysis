N=500;
figure;
hold on;
x=randn(1, N);
y=randn(1, N);
h = plot(x, y, 'r.')
CORR = corrcoef(x, y)
CORR(1, 2)