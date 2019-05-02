bootstraps_number = 500;
%кол-во точек данных, которые необходимо приблизить
N = 1000;
pars_number = size(regressors1,2); % кол-во коэфициентов регрессии
params = zeros(bootstraps_number,pars_number);

for boot=1:bootstraps_number
    indices = datasample(1:1:N, N);
    X = regressors1(indices,:); % генерим бутстрап
    w = inv(X'*X)*X'*data1(indices); % находим веса для конкретного сэмпла
    %записываем для каждого сэмпла полученные на его основе параметры
    params(boot,:) = w;
end
% находим модель(веса) и её нижний и верхний доверительный интервалы (5%)
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