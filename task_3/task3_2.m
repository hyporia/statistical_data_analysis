x = rand(1,50);
y = x + randn(1,50)/3;
figure; hold on;

x_teach = x(1:25);
x_test = x(26:50);
y_teach = y(1:25);
y_test = y(26:50);
scatter(x_teach, y_teach, 'r.');
scatter(x_test, y_test, 'g.');

X = x_teach(:);
X(:,end+1) = 1;
% строим OLS регрессию на сгенерированных случайных данных
w = inv(X'*X)*X'*y_teach';
%предсказания модели на тестовых данных и на данных, на которых она
%обучалась
y_pred_test = w(1)*x_test + w(2);
y_pred_teach = w(1)*x_teach + w(2);
xaxis = 0:0.1:1;
yaxis = xaxis * w(1) + w(2);
plot(xaxis, yaxis, 'k-');
%вычисляем коэффициент детерминации для тестовых данных и для данных, на 
%которых она обучалась
R2_test = computeR2(y_pred_test, y_test);
R2_teach = computeR2(y_pred_teach, y_teach);
title(sprintf('R2 on teach data = %.2f\nR2 on test data = %.2f',R2_teach,R2_test));
legend('teach data', 'test data', 'model');
