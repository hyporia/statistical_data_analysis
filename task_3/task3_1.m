x = 1:0.1:10;
% генерируем случайные данные с линейным трендом
y = 3*x + randn(1,length(x))*2;
figure; hold on;
scatter(x, y, 'r.');
X = x(:);
X(:,end+1) = 1;
% строим OLS регрессию на сгенерированных случайных данных
w = inv(X'*X)*X'*y';
y2 = w(1)*x + w(2);
plot(x, y2, 'k-');
%вычисляем коэффициент детерминации
R2 = computeR2(y2, y);
title(sprintf('coefficient of determination = %.2f',R2));