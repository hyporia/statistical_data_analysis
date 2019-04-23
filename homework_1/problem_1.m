N=1000;
figure;
hold on;
x=randn(1, N);
y=randn(1, N);
h = scatter(x, y, 'r.');
xlabel('Condition A');
ylabel('Condition B');