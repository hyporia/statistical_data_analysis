%generate random sample
x = randn(1, 900);
%get sample correlated with initial sample
y = x*1.5 + 10;
y_noised = y;
%generate normal(10, 2) noise
indexes = randi(900, 1, 50);
independent = normrnd(10, 2, [1, 900]);
%add noise
y_noised(indexes) = independent(indexes);
%find correlation coefficient
corr = corrcoef(x, y_noised);
figure;
hold on;
%2D histogram 
h1 = scatterhist(x, y_noised);
title('correlation = ' + string(corr(1, 2)));
xlabel('x');
ylabel('y');
figure;
%plot marginal distribution of first sample
[f,xi] = ksdensity(x);
plot(xi,f, 'r-');
title('First marginal distribution');
xlabel('value');
ylabel('probability');
figure;
%plot marginal distribution of seconde (correlated) sample
[f,yi] = ksdensity(y_noised);
plot(yi,f, 'r-');
title('Second marginal distribution');
xlabel('value');
ylabel('probability');
figure;
%plot joint distribution of two samples
gridx1 = -2.5:.05:2.5;
gridx2 = 4:.1:16;
[x1,x2] = meshgrid(gridx1, gridx2);
x1 = x1(:);
x2 = x2(:);
xi = [x1 x2];
X = [x' y_noised'];
ksdensity(X,xi);
title('Joint distribution');