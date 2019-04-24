x = 1:0.1:10;
% ���������� ��������� ������ � �������� �������
y = 3*x + randn(1,length(x))*3;
figure; hold on;
scatter(x, y, 'r.');
X = x(:);
X(:,end+1) = 1;
% ������ OLS ��������� �� ��������������� ��������� ������
w = inv(X'*X)*X'*y';
y2 = w(1)*x + w(2);
plot(x, y2, 'k-');
%��������� ����������� ������������
R2 = computeR2(y2, y);
title(sprintf('coefficient of determination = %.2f',R2));
