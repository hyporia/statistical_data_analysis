all_data = [Health Economy];
sizes = size(all_data);
indices = randsample(1:157, 157);
X_data = all_data(indices,:);
Y_data = HappinessScore(indices, :);

N = 157;
N_teach = 130;
N_test = 27;
bootstrap_size = 10;

X_teach = X_data(1:N_teach,:);
X_test = X_data(N_teach+1:end,:);
Y_teach = Y_data(1:N_teach,:);
Y_test = Y_data(N_teach+1:end,:);

[Mdl_lsq,FitInfo_lsq] = fitrlinear(X_teach,Y_teach,'Learner','leastsquares','Regularization','lasso');
[Mdl_svm,FitInfo_svm] = fitrlinear(X_teach,Y_teach,'Learner','svm','Regularization','lasso');

Y_pred_lsq = predict(Mdl_lsq, X_test);
Y_pred_svm = predict(Mdl_svm, X_test);

errors_lsq = sum((Y_pred_lsq - Y_test).^2)/N_test;
errors_svm = sum((Y_pred_svm - Y_test).^2)/N_test;
sizes = N_teach;

for i=2:50
    [X_bstrp,Y_bstrp] = bstrpsample(X_teach, Y_teach, bootstrap_size);
    X_teach_temp = [X_teach;X_bstrp];
    Y_teach_temp = [Y_teach;Y_bstrp];
    [Mdl_lsq,FitInfo_lsq] = fitrlinear(X_teach_temp,Y_teach_temp,'Learner','leastsquares','Regularization','lasso');
    [Mdl_svm,FitInfo_svm] = fitrlinear(X_teach_temp,Y_teach_temp,'Learner','svm','Regularization','lasso');

    Y_pred_lsq = predict(Mdl_lsq, X_test);
    Y_pred_svm = predict(Mdl_svm, X_test);

    errors_lsq(i) = sum((Y_pred_lsq - Y_test).^2)/N_test;
    errors_svm(i) = sum((Y_pred_svm - Y_test).^2)/N_test;
    sizes(i)=N_teach+bootstrap_size;
    bootstrap_size = bootstrap_size + 10;
end

figure; hold on;
plot(sizes,errors_lsq);
plot(sizes,errors_svm);