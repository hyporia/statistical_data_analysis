bootstraps_number = 500;
%���-�� ����� ������, ������� ���������� ����������
N = 1000;
pars_number = size(regressors1,2); % ���-�� ������������ ���������
params = zeros(bootstraps_number,pars_number);

for boot=1:bootstraps_number
    indices = datasample(1:1:N, N);
    X = regressors1(indices,:); % ������� ��������
    w = inv(X'*X)*X'*data1(indices); % ������� ���� ��� ����������� ������
    %���������� ��� ������� ������ ���������� �� ��� ������ ���������
    params(boot,:) = w;
end
% ������� ������(����) � � ������ � ������� ������������� ��������� (5%)
paramsP = prctile(params,[2.5 50 97.5],1);
figure;
hold on;
plot(paramsP(1,:),'r-');
plot(paramsP(2,:),'k-');
plot(paramsP(3,:),'r-');
ax = axis;
axis([0 pars_number+1 ax(3:4)]);
xlabel('Parameter number');
ylabel('Value');
title('95% confidence intervals for model parameters');