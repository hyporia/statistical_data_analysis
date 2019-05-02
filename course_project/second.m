data = sortrows([Age SpendingScores], 1);
x = data(:,1)';
y = data(:,2)';
%find correlation coefficient
corr = corrcoef(x, y);
figure;
hold on;
%plot marginal distribution of first sample
[f,xi] = ksdensity(x);
plot(xi,f, 'r-');
title('Age dencity');
xlabel('Age');
ylabel('Probability');
figure;
%plot marginal distribution of second sample
[f,yi] = ksdensity(y);
plot(yi,f, 'r-');
title('Spending score dencity');
xlabel('Spending score');
ylabel('Probability');
figure;
%plot joint distribution of two samples
gridx1 = 16:.1:75;
gridx2 = 0:.1:100;
[x1,x2] = meshgrid(gridx1, gridx2);
x1 = x1(:);
x2 = x2(:);
xi = [x1 x2];
X = [x' y'];
ksdensity(X,xi);
title('Joint distribution');
xlabel('Age');
ylabel('Spending score');%-- 17.02.2019 18:28 --%
y=2
asd
corre
corrCORR
CORR
CORRCOEF(asd
task1_1
%-- 19.02.2019 23:50 --%
mean([1, 2, 3]);
mean(1)
mean(1, 2, 3)
m = mean([1, 2, 3)]
m = mean([1, 2, 3])
m = mean([1, 2, 2])
for num in [1, 2, 3]
x=num
for num = [1, 2, 3]
num
=2
for num = [1, 2, 3]
print(num)
;
test
std([1 2 3])
std([2 5 100])
sample = normrnd(10,2, [10, 1]);
std(sample)
mean(sample)
test
sample = normrnd(10,2, [10, 1])
test
SEM = 0
2/sqrt(4)
test
task1_2
%-- 21.02.2019 1:17 --%
[2 3].^2
test
x = [1 3 5];
x(1)'
x(2)'
test
x = [1 2 3 4 5];
ix = ceil(5*rand(1, 5));
x(ix)'
x = [6 7 8 9 10];
x(ix)'
rand(1, 5)
test
task1_3
get_bootstrap_sample
task1_3
%-- 21.02.2019 22:46 --%
a = [10, 20]
a = zeros(10, 5)
M_MAX = 1000;
N_MAX = 2000;
YTemp  = (1:M_MAX)'*(1:N_MAX);
a = zeros(24,4);
b = ones(24,1);
b = repmat(b,1,4);
rand_indexes = ceil(10 * rand(1, 10));
a = repmat(rand_indexes, 1, 5);
a = repmat(rand_indexes, 5,1);
r = randi(10,5,3);
clear
cls
repeated_array = repmat([5 6 7], 4, 1);
repeated_array = repmat([5 6 7], 1, 4);
repeated_array = repmat([5 6 7], 4, 2);
repeated_array = repmat([5, 6, 7], 4, 1);
repeated_array = repmat([5, 6, 7], 1, 4);
repeated_array = repmat([5, 6, 7], 1, 1);
repeated_array = repmat([5, 6, 7], 4, 1);
repeated_array = repmat([5; 6; 7], 4, 1);
repeated_array = repmat([5; 6; 7], 1, 4);
b = [1 2 3]
b = b.'
repeated_array = repmat(b, 1, 4);
task1_4
x = rand(1, 10, 2)
x
x = zeros(1, 10);
x
rand(x)
x = rand(x);
x = randn(1, 10)
y = x*2;
corr(x, y);
cor = corr(x, y);
cor = corrcoef(x, y);
x = randn(1, 10);
y = x * 2
c = corrcoef(x, y);
y(1) = 10
y(4) = 7
y(7) = -100
c = corrcoef(x, y);
y = x*2;
c = corrcoef(x, y);
y(5) = -213;
c = corrcoef(x, y);
y = x*2;
y(2) = 0.5;
c = corrcoef(x, y);
x = randn(1, 10);
y = 2*x;
y(2) = 0.5;
c = corrcoef(x, y);
y(2) = 0.2;
c = corrcoef(x, y);
y(6) = 0.3;
c = corrcoef(x, y);
task1_5
sample = normrnd(10,2, [10, 1]);
sample
task1_5
corr(1, 1);
x
c = corr(x, y);
y = x*2;
c = corr(x, y);
x = randn(1, 1000);
x = randn(1, 10);
y = x*2;
c = corr(x, y);
c = corrcoef(x, y);
task1_5
%-- 15.03.2019 18:39 --%
task1_5
task1_2
%-- 26.03.2019 19:43 --%
problem_1
load('Homework1.mat')
problem_2
s
data1
data(1, 1)
data1(1, 1)
problem_2
problem_3
problem_4
size(matrix_1, 1)
size(matrix_1, 2)
zeros(3)
zeros(1, 3)
zeros(3, 1)
zeros(1, 3)
ones(1, 3)
'asd'
echo('asd')
disp('Row')
disp(1 + 'asd')
disp(string(1) + 'asd')
problem_5
clear
clr
problem_1
problem_2
load Homework2.mat
problem_2
actualval
mean(data1,2)
std(mean(data1,2))
problem_2
vals
actualval
problem_3
x = data2b - data2a;
% what is the actually observed difference?
actualval = mean(x);
actualval
x
x = x-mean(x)
mean(x)
problem_3
problem_4
randn()
x.
x.^2
task2_1
x = -1:1;
x
size(x)
x = -1:0.1:1;
size(x);
size(x)
task2_1
size(x)
size(x, 2)
task2_1
rand(20, 5)
latent_space = linspace(-1,1,tries*100);
latent_space = linspace(-1,1,20*100);
latent_space
%-- 17.02.2019 18:28 --%
y=2
asd
corre
corrCORR
CORR
CORRCOEF(asd
task1_1
%-- 19.02.2019 23:50 --%
mean([1, 2, 3]);
mean(1)
mean(1, 2, 3)
m = mean([1, 2, 3)]
m = mean([1, 2, 3])
m = mean([1, 2, 2])
for num in [1, 2, 3]
x=num
for num = [1, 2, 3]
num
=2
for num = [1, 2, 3]
print(num)
;
test
std([1 2 3])
std([2 5 100])
sample = normrnd(10,2, [10, 1]);
std(sample)
mean(sample)
test
sample = normrnd(10,2, [10, 1])
test
SEM = 0
2/sqrt(4)
test
task1_2
%-- 21.02.2019 1:17 --%
[2 3].^2
test
x = [1 3 5];
x(1)'
x(2)'
test
x = [1 2 3 4 5];
ix = ceil(5*rand(1, 5));
x(ix)'
x = [6 7 8 9 10];
x(ix)'
rand(1, 5)
test
task1_3
get_bootstrap_sample
task1_3
%-- 21.02.2019 22:46 --%
a = [10, 20]
a = zeros(10, 5)
M_MAX = 1000;
N_MAX = 2000;
YTemp  = (1:M_MAX)'*(1:N_MAX);
a = zeros(24,4);
b = ones(24,1);
b = repmat(b,1,4);
rand_indexes = ceil(10 * rand(1, 10));
a = repmat(rand_indexes, 1, 5);
a = repmat(rand_indexes, 5,1);
r = randi(10,5,3);
clear
cls
repeated_array = repmat([5 6 7], 4, 1);
repeated_array = repmat([5 6 7], 1, 4);
repeated_array = repmat([5 6 7], 4, 2);
repeated_array = repmat([5, 6, 7], 4, 1);
repeated_array = repmat([5, 6, 7], 1, 4);
repeated_array = repmat([5, 6, 7], 1, 1);
repeated_array = repmat([5, 6, 7], 4, 1);
repeated_array = repmat([5; 6; 7], 4, 1);
repeated_array = repmat([5; 6; 7], 1, 4);
b = [1 2 3]
b = b.'
repeated_array = repmat(b, 1, 4);
task1_4
x = rand(1, 10, 2)
x
x = zeros(1, 10);
x
rand(x)
x = rand(x);
x = randn(1, 10)
y = x*2;
corr(x, y);
cor = corr(x, y);
cor = corrcoef(x, y);
x = randn(1, 10);
y = x * 2
c = corrcoef(x, y);
y(1) = 10
y(4) = 7
y(7) = -100
c = corrcoef(x, y);
y = x*2;
c = corrcoef(x, y);
y(5) = -213;
c = corrcoef(x, y);
y = x*2;
y(2) = 0.5;
c = corrcoef(x, y);
x = randn(1, 10);
y = 2*x;
y(2) = 0.5;
c = corrcoef(x, y);
y(2) = 0.2;
c = corrcoef(x, y);
y(6) = 0.3;
c = corrcoef(x, y);
task1_5
sample = normrnd(10,2, [10, 1]);
sample
task1_5
corr(1, 1);
x
c = corr(x, y);
y = x*2;
c = corr(x, y);
x = randn(1, 1000);
x = randn(1, 10);
y = x*2;
c = corr(x, y);
c = corrcoef(x, y);
task1_5
%-- 15.03.2019 18:39 --%
task1_5
task1_2
%-- 26.03.2019 19:43 --%
problem_1
load('Homework1.mat')
problem_2
s
data1
data(1, 1)
data1(1, 1)
problem_2
problem_3
problem_4
size(matrix_1, 1)
size(matrix_1, 2)
zeros(3)
zeros(1, 3)
zeros(3, 1)
zeros(1, 3)
ones(1, 3)
'asd'
echo('asd')
disp('Row')
disp(1 + 'asd')
disp(string(1) + 'asd')
problem_5
clear
clr
problem_1
problem_2
load Homework2.mat
problem_2
actualval
mean(data1,2)
std(mean(data1,2))
problem_2
vals
actualval
problem_3
x = data2b - data2a;
% what is the actually observed difference?
actualval = mean(x);
actualval
x
x = x-mean(x)
mean(x)
problem_3
problem_4
randn()
x.
x.^2
task2_1
x = -1:1;
x
size(x)
x = -1:0.1:1;
size(x);
size(x)
task2_1
size(x)
size(x, 2)
task2_1
rand(20, 5)
latent_space = linspace(-1,1,tries*100);
latent_space = linspace(-1,1,20*100);
latent_space
latent_space = linspace(-1,1,tries*100);
latent_space = linspace(-1,1,20*100);
latent_space = reshape(latent_space, [20,100]);
weights = randn(1,length(latent_space));
points= polynom(latent_space);
polynom = @(x) power(x,4) + power(x,3) + power(x,2) + power(x,1) + power(x,0);
points= polynom(latent_space);
weighted_sum = points*weights';
problem_4
task2_1
rand(1, 100)
rand(1, 100).^4
x = [1 2 3];
x = x - 0.1
sum(x)
x-2
abs(x)
task2_2
errors = zeros(100)
errors = zeros(10)
errors = zeros(1, 10)
task2_2
data = rand(0, 100).^4;
candidates = linspace(0, 1, 100);
errors = zeros(1, 100);
sum(abs(data-candidates(i)));
sum(abs(data-candidates(i)))
abs(data-candidates(1))
candidates = linspace(0, 1, 100);
candidates = linspace(0, 1, 100)
candidates = linspace(0, 1, 10)
candidates = linspace(0, 1, 100)
candidates = linspace(0, 1, 10)
data=rand(0, 10).^4
data=rand(1, 10).^4
task2_2
task2_3
modelfun = @(a, b ,x)a^x+b
modelfun(1, 2, 1)
modelfun = @(params,x)a.^x+b;
modelfun(1, 2, 1)
modelfun([], 2, 1)
modelfun([1 2], 1)
modelfun = @(params,x)params(1).^x+params(2);
modelfun([1 2], 1)
x = [1, 2, 3]
modelfun([1 2], x)
modelfun([2 2], x)
rand()
rand(1, 10)
modelfun = @(params,x)params(1).^x+params(2);
params=[1.3 1];
data=modelfun(params,0:0.1:1);
data
data=modelfun(params,linspace(0, 1, 10));
data
rand(1, 10)
randn(1, 10)
modelfun = @(params,x)params(1).^x+params(2);
params=[1.3 1];
x = linspace(0, 1, 100);
data=modelfun(params, x) + randn(1, 100);
data
task2_4
task2_4
task2_4
x0 = [100, -1];
x0
task2_4
%-- 27.03.2019 10:07 --%
task2_5
task1_5
[X1,X2] = meshgrid(linspace(-1,3,25)',linspace(-3,1,25)');
X1
size(X1)
task1_5
size(f)
task1_5
gridx1 = -0.25:.05:1.25;
size(gridx1)
x = [0+.5*rand(20,1) 5+2.5*rand(20,1);
.75+.25*rand(10,1) 8.75+1.25*rand(10,1)];
size(x)
x = 0+.5*rand(20,1) 5+2.5*rand(20,1);
rand(20, 1)
.75+.25*rand(10,1) 8.75+1.25*rand(10,1)];
x = [0+.5*rand(20,1) 5+2.5*rand(20,1);
.75+.25*rand(10,1) 8.75+1.25*rand(10,1)];
size(x)'
size(x);
size(x)
x = [0+.5*rand(20,1) 5+2.5*rand(20,1)];
size(x);
size(x)
gridx2 = 0:.1:15
size(gridx2)
task1_5
x = randn(1, 900);
y = x*1.5 + 10;
X = [x y];
size(x)
size(X)
X = [x; y];
size(X)
X = [x'; y'];
size(X)
X = [x' y'];
size(X)
task1_5
task1_3
get_bootstrap_sample
task1_3
task1_4
get_bootstrap_samples
task1_4
task1_1
task1_2
task1_5
task2_1
task2_2
task2_3
task2_5
%-- 27.03.2019 13:30 --%
problem_2
load('Homework1.mat')
problem_2
problem_3
problem_1
problem_2
load('Homework2.mat')
problem_2
problem_4
x = linspace(1, 100, 1000);
size(x);
size(x)
length(x)
x = 1:0.1:100;
length(x)
%-- 29.03.2019 18:27 --%
task1_1
task1_2
problem_4
round(rand(10,10)
round(rand(10000,ns(p)))
y
round(rand(10,10))
rand(10,10)
round(rand(10,10))
flips = round(rand(10000,ns(p)));
flips = round(rand(10,10))
dist = sum(flips==0,2);
dist
problem_1
task1_4
task1_1
task1_2
task1_3
task1_4
task1_5
task2_1
task2_2
task2_3
task2_5
problem_1
load('Homework1.mat')
problem_1
problem_2
problem_3
problem_4
problem_5
load('Homework2.mat')
problem_1
problem_2
problem_3
problem_4
%-- 29.03.2019 19:24 --%
task2_3
%-- 24.04.2019 0:12 --%
load('Homework3.mat')
problem_1
X = score1(:)
X(:,end+1) = 1
problem_2
problem_4
task3_1
problem_1
task3_1
problem_1
task3_1
xx = 1:0.1:10;
xx
size(xx)
length(xx)
task3_1
x = 0:0.1:1;
y = datasample(x,5)
y = randsample(x,5)
y = randsample(1,5)
y = randsample(10,5)
randsample(50, 25);
randsample(50, 25)
x = 1:1:10
y = x(1:5)
y = x(6:10)
y = x(:);
y
task3_2
x
x = 1:1:10
x - mean(x)
task3_2
slCharacterEncoding('UTF-8')
task3_2
randsample(10, 5)
indices = randsample(10, 5)
x = 1:1:10
x(indices)
x = 10:1:20
x(indices)
task3_3
x = rand(1,10)>.5
y = x.==0
y = x==0
task4_1
task4_2
x = (1:1:10 1:1:10)
x = 1:1:10
x = [1:1:10 1:1:10]
x = [1:1:10;1:1:10]
classA = bsxfun(@times,[1.5 1]',randn(2,100));
m
task4_2
heightM = 50 + 10*randn(1,100);
heightF = 45 + 9*randn(1,60);
weightM = 50 + 2*heightM + 10*randn(size(heightM));
weightF = 40 + 3*heightF + 10*randn(size(heightF));
classA = [heightM weightM];
classB = [heightF weightF];
heightM = 50 + 10*randn(1,100);
heightF = 45 + 9*randn(1,60);
weightM = 50 + 2*heightM + 10*randn(size(heightM));
weightF = 40 + 3*heightF + 10*randn(size(heightF));
classA = [heightM;weightM];
classB = [heightF;weightF];
task4_2
all_data = [heightM' weightM';heightF' weightF'];
all_data = [heightM' weightM';heightF' weightF';];
correct_classes = [ones(length(heightM));zeros(length(heightF))]
task4_2
correct_classes = [ones(length(heightM));zeros(length(heightF))]
ones(length(heightM))
correct_classes = [ones(length(heightM))';zeros(length(heightF))']
ones(10)
correct_classes = [ones(length(heightM), 1);zeros(length(heightF), 1)];
task4_2
pred = dist_to_males < dist_to_females
task4_2
%-- 24.04.2019 13:28 --%
load('data.mat')
mean(AnnualIncome)
corrcoef(AnnualIncome, SpendingScores)
corrcoef(Genders, SpendingScores)
corrcoef(Age, SpendingScores)
corrcoef(Age, AnnualIncome)
corrcoef(Age, SpendingScores)
source
data = [Age SpendingScores];
data = sortrows([Age SpendingScores], 1);
load('data.mat')
data = sortrows([Age SpendingScores], 1);
source
corrcoef(x,y)
source
task1_5
visualize
dencity
first
load('data.mat')
first
second
task3_1
task3_2
task3_3
problem_1
load('Homework3.mat')
problem_1
problem_2
problem_4
load('data.mat')
third
load('D:\study\2 sem\statistical data analysis\practice\homework_3\Homework3.mat')
task3_2
task3_1
third
y_pred = polyval(w,xx);
y_pred = polyval(w,x);
third
fifth
load('D:\study\2 sem\statistical data analysis\practice\course_project\data.mat')
fifth
data = data(:,[2 3]);
fifth
males_count = genders>0;
males_count = Genders>0;
males_count = Genders>0;
load('D:\study\2 sem\statistical data analysis\practice\course_project\data.mat')
fifth
task4_2
fifth
load('D:\study\2 sem\statistical data analysis\practice\course_project\data.mat')
fifth
load('D:\study\2 sem\statistical data analysis\practice\course_project\data.mat')
fifth
task4_2
load('D:\study\2 sem\statistical data analysis\practice\course_project\data.mat')
fifth
second
Age>38
fifth
second
fifth
%-- 24.04.2019 17:13 --%
load('D:\study\2 sem\statistical data analysis\practice\course_project\data.mat')
fifth
task3_1
task3_2
task3_3
task4_1
task4_2
load('D:\study\2 sem\statistical data analysis\practice\homework_3\Homework3.mat')
problem_1
problem_2
problem_4
first
load('D:\study\2 sem\statistical data analysis\practice\homework_3\Homework3.mat')
problem_1
problem_2
problem_1
problem_2
problem_4
problem_1
problem_2
problem_4
%-- 25.04.2019 20:14 --%
first
corrcoef(data);
corrcoef(data)
first
corrcoef(data)
ShadedCorrelationTable(data)
ShadedCorrelationTable
first
length(data)
size(data)
data(1,:)
data(:,1)
first
length(Country)
data(1,:)'
data(:,1)'
first
indices = randsample(10, 5);
indices = randsample(10, 5)
data2 = data(1:end-1;:)
data2 = data(1:end-1,:)
indices = randsample(sizes(1),100);
data(indeces)
data(indices)
data(indices(1:100),:)
test_data = all_data; test_data(indices(1:100),:) = [];
all_data = [Health Family Economy];
test_data = all_data; test_data(indices(1:100),:) = []
first
X_test(1,:)
predict(Mdl_lsq, X_test)
first
test_N = sizes(1) - teach_N;
first
a = []
a(1) = 2
a(2) = 3
clear
load('D:\study\2 sem\statistical data analysis\practice\course_project_2\data.mat')
regression_errors
datasample(10, 5);
datasample(10, 5)
datasample(1:1:10, 5)
test_x = all_data(end-47:end,:);
test_x = all_data(end-46:end,:);
datasample(0;5)
datasample(0,5)
datasample([],5)
a = 1
a(2) = 2
all_data = [Health Family Economy];
sizes = size(all_data);
N = sizes(1);
teach_N = 110;
test_N = 47;
%формируем данные для обучения и теста
indices = randsample(N,teach_N);
X_teach = all_data(indices(1:teach_N),:);
X_test = all_data; X_test(indices(1:teach_N),:) = [];
Y_teach=HappinessScore(indices(1:teach_N),:);
Y_test = HappinessScore; Y_test(indices(1:teach_N),:) = [];
1:100
datasample([1 2 3], 6)
a = [[1 2];[3 4]]
a = [a;[5 6]];
a
regression_errors_bootstrap
load('D:\study\2 sem\statistical data analysis\practice\course_project_2\data.mat')
regression_errors_bootstrap
load('D:\study\2 sem\statistical data analysis\practice\course_project_2\data.mat')
regression_errors
load('D:\study\2 sem\statistical data analysis\practice\course_project_2\data.mat')
regression_errors
load('D:\study\2 sem\statistical data analysis\practice\course_project_2\data.mat')
regression_errors
load('D:\study\2 sem\statistical data analysis\practice\course_project_2\data.mat')
regression_errors
abs(-1)
regression_errors
all_data = [Health Family Economy];
sizes = size(all_data);
N = sizes(1);
datasample([1 2 3], 6)
a = bstrpsample([1;2;3],6)
a = bstrpsample([1;2;3;5;6],10)
regression_errors
all_data = [Health Family Economy];
sizes = size(all_data);
all_data=all_data(randsample(1:157, 157),:);
X_teach = all_data(1:N_teach,:);
X_test = all_data(N_teach+1:end,:);
N_teach = 130;
N_test = 27;
X_teach = all_data(1:N_teach,:);
X_test = all_data(N_teach+1:end,:);
randsample(1:10,10)
a = [1;2;3];
a([1 3],:)
regression_errors_bootstrap
load('D:\study\2 sem\statistical data analysis\practice\course_project_2\data.mat')
regression_errors_bootstrap
regression_errors
regression_errors_bootstrap
first
regression_errors
first
load('D:\study\2 sem\statistical data analysis\practice\course_project_2\data.mat')
first
regression_errors
regression_errors_bootstrap
regression_errors
regression_errors_bootstrap
regression_errors
regression_errors_bootstrap
first
regression_errors
regression_errors_bootstrap
regression_errors
load('D:\study\2 sem\statistical data analysis\practice\course_project\data.mat')
fifth
second
peaks(25)
mesh(z)
z = peaks(25);
figure
mesh(z)
z = peaks(25);
figure
z = peaks(25);figure;
zlabel('Dencity');