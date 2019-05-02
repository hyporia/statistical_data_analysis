all_data = [Health Economy];
sizes = size(all_data);

N = sizes(1);
teach_N = 5;
test_N = sizes(1) - teach_N;
sizes = [];
errors_lsq = [];
errors_svm = [];
R2_lsq = [];
R2_svm = [];
i = 1;
while teach_N <= 140
    indices = randsample(N,teach_N);
    X_teach = all_data(indices(1:teach_N),:);
    X_test = all_data; X_test(indices(1:teach_N),:) = [];
    Y_teach=HappinessScore(indices(1:teach_N),:);
    Y_test = HappinessScore; Y_test(indices(1:teach_N),:) = [];

    [Mdl_lsq,FitInfo_lsq] = fitrlinear(X_teach,Y_teach,'Learner','leastsquares','Regularization','lasso');

    [Mdl_svm,FitInfo_svm] = fitrlinear(X_teach,Y_teach,'Learner','svm','Regularization','lasso');

    Y_pred_lsq = predict(Mdl_lsq, X_test);
    Y_pred_svm = predict(Mdl_svm, X_test);
    
    errors_lsq(i) = sum((Y_pred_lsq - Y_test).^2)/test_N;
    errors_svm(i) = sum((Y_pred_svm - Y_test).^2)/test_N;
    sizes(i) = teach_N;
    R2_lsq(i) = computeR2(Y_pred_lsq, Y_test);
    R2_svm(i) = computeR2(Y_pred_svm, Y_test);
    i=i+1;
    teach_N=teach_N+5;
    test_N = N - teach_N;
end
figure; hold on;
plot(sizes,errors_lsq);
plot(sizes,errors_svm);
figure;
plot(sizes, R2_lsq);
plot(sizes, R2_svm);