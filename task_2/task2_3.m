% generate some random data
x = rand(1,1000);
y = x+0.1*randn(1,1000);
% construct the regressor matrix
X = [x(:).^2 x(:) ones(length(x),1)];
% OLS estimation
w = inv(X'*X)*X'*y(:);
modelfit = X*w;
% compute square error
squarederror = sum((y(:)-modelfit).^2);
% plot
figure;
hold on;
scatter(x,y,'r.');
ax = axis;
xx = linspace(ax(1),ax(2),100)';
yy = [xx.^2 xx ones(length(xx),1)]*w;
plot(xx,yy,'k-');
xlabel('x');
ylabel('y');
legend('data', 'generalization');
title(sprintf('squared error = %.1f',squarederror));