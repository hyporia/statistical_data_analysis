
data = sortrows([Age SpendingScores], 1);
x = data(:,1)';
y = data(:,2)';

figure;hold on;
scatter(x,y,'r.');

% construct regressor matrix
X = x(:);
X(:,end+1) = 1;
% construct data vectors
% use OLS to estimate weights
w = inv(X'*X)*X'*y';
ax = axis;
% need more than two points since function may be nonlinear
xx = linspace(ax(1),ax(2),100);
%polyval(w, xx) computes values of polynom with weights w in points of xx
plot(xx,polyval(w,xx));
y_pred = polyval(w,x);
R2 = computeR2(y_pred, y);
legend_1 = sprintf('y =  %.3f x + %.3f, R2 = %.2f',w(1),w(2),R2);

% construct regressor matrix
X = x(:).^2;
X(:,end+1) = x(:);
X(:,end+1) = 1;
% construct data vectors
% use OLS to estimate weights
w = inv(X'*X)*X'*y';
ax = axis;
% need more than two points since function may be nonlinear
xx = linspace(ax(1),ax(2),100);
%polyval(w, xx) computes values of polynom with weights w in points of xx
plot(xx,polyval(w,xx));
y_pred = polyval(w,x);
R2 = computeR2(y_pred, y);
legend_2 = sprintf('y = %.3f x^2 + %.3f x + %.3f, R2 = %.2f',w(1),w(2),w(3),R2);

X = x(:).^3;
X(:,end+1) = x(:).^2;
X(:,end+1) = x(:);
X(:,end+1) = 1;
% construct data vectors
% use OLS to estimate weights
w = inv(X'*X)*X'*y';
ax = axis;
% need more than two points since function may be nonlinear
xx = linspace(ax(1),ax(2),100);
%polyval(w, xx) computes values of polynom with weights w in points of xx
plot(xx,polyval(w,xx));
y_pred = polyval(w,x);
R2 = computeR2(y_pred, y);
legend_3 = sprintf('y = %.3f x^3 + %.3f x^2 + %.3f x + %.3f, R2 = %.2f',w(1),w(2),w(3),w(4),R2);

% construct regressor matrix
X = x(:).^4;
X(:,end+1) = x(:).^3;
X(:,end+1) = x(:).^2;
X(:,end+1) = x(:);
X(:,end+1) = 1;
% construct data vectors
% use OLS to estimate weights
w = inv(X'*X)*X'*y';
ax = axis;
% need more than two points since function may be nonlinear
xx = linspace(ax(1),ax(2),100);
%polyval(w, xx) computes values of polynom with weights w in points of xx
plot(xx,polyval(w,xx));
y_pred = polyval(w,x);
R2 = computeR2(y_pred, y);
legend_4 = sprintf('y = %.3f x^4 + %.3f x^3 + %.3f x^2 + %.3f x + %.3f, R2 = %.2f',w(1),w(2),w(3),w(4),w(5),R2);

legend('data',legend_1, legend_2, legend_3, legend_4, ...
    'Location', 'Best');