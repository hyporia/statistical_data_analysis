x = rand(1,1000);
% ���������� ��������� ������ � �������� �������
y = x + randn(1,1000);
figure; hold on;
for k = 1:10
    %���������� �������, �� ������� ����� ����� ����������� ������
    indices = randsample(1000, 10);
    x_sample = x(indices);
    y_sample = y(indices);
    X = x_sample(:);
    X(:,end+1) = 1;
    % ������ OLS ��������� �� ������ �������
    w = inv(X'*X)*X'*y_sample';
    y_predict = w(1)*x_sample + w(2);
    plot(x_sample, y_predict);
end
X = x(:);
X(:,end+1) = 1;
% ������ OLS ��������� �� ��������������� ��������� ������
w = inv(X'*X)*X'*y';
y2 = w(1)*x + w(2);
plot(x, y2, 'r-', 'LineWidth', 3);
title('n = 10');

figure; hold on;
for k = 1:10
    %���������� �������, �� ������� ����� ����� ����������� ������
    indices = randsample(1000, 100);
    x_sample = x(indices);
    y_sample = y(indices);
    X = x_sample(:);
    X(:,end+1) = 1;
    % ������ OLS ��������� �� ������ �������
    w = inv(X'*X)*X'*y_sample';
    y_predict = w(1)*x_sample + w(2);
    plot(x_sample, y_predict);
end
X = x(:);
X(:,end+1) = 1;
w = inv(X'*X)*X'*y';
y2 = w(1)*x + w(2);
plot(x, y2, 'r-', 'LineWidth', 3);
title('n = 100');

%����� - ��� ������ ������ ������, ��� ���������� ������ � �����
%������������