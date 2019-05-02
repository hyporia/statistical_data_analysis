%какую часть данных будем брать для теста
numfolds = 10;
subjects_number = size(xdata,2);
points_number = size(xdata,1);
%мешаем строки матрицы xdata 
allix = randperm(points_number); % all data indices, randomly ordered
numineach = ceil(points_number/numfolds); % at least one part must have this many data points

allix = reshape([allix NaN(1,numfolds*numineach-points_number)],numfolds,numineach);

R2_linear = zeros(1,subjects_number);
R2_quadratic = zeros(1,subjects_number);
figure;hold on;

for subject=1:subjects_number
    
    prediction_linear = zeros(points_number,1);
    prediction_quadratic = zeros(points_number,1);
    
    %для каждой десятой части данных
    for fold=1:numfolds
        % вычиялем индексы, по которым потом делим данные
        testix = allix(fold,:); 
        testix(isnan(testix)) = []; 
        trainix = setdiff(1:points_number,testix);
        
        %делим данные
        Xtrain = [xdata(trainix,subject) ones(length(trainix),1)];
        Xtest = [xdata(testix,subject) ones(length(testix),1)];
        ytrain = ydata(trainix,subject);
        ytest = ydata(testix,subject);
        
        % вычисляем веса для линейной модели
        w_lin = inv(Xtrain'*Xtrain)*Xtrain'*ytrain;
        prediction_linear(testix) = Xtest*w_lin;
        % prepare regressor matrices and data
        Xtrain = [xdata(trainix,subject).^2 xdata(trainix,subject) ones(length(trainix),1)];
        Xtest = [xdata(testix,subject).^2 xdata(testix,subject) ones(length(testix),1)];
        ytrain = ydata(trainix,subject);
        ytest = ydata(testix,subject);
        % вычисляем веса для квадратичной модели
        w_sqr = inv(Xtrain'*Xtrain)*Xtrain'*ytrain;
        prediction_quadratic(testix) = Xtest*w_sqr;
    end
    R2_linear(subject) = computeR2(prediction_linear, ydata(:,subject));
    R2_quadratic(subject) = computeR2(prediction_quadratic,ydata(:,subject));
end

s1 = scatter(xdata(:,subject), ydata(:,subject),'r.');
h1 = plot(xdata(:,subject), polyval(w_lin, xdata(:,subject)),'k');
h1 = plot(sort(xdata(:,subject)), polyval(w_sqr, sort(xdata(:,subject))),'g');

figure;hold on;
h2 = plot(ax(1:2),ax(1:2),'k-');
s2 = scatter(R2_linear,R2_quadratic);
axis equal square;
ax = axis;
xlabel('Cross-validated R^2 of linear model');
ylabel('Cross-validated R^2 of quadratic model');