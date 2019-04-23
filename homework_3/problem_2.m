% construct regressor matrix
X = score1(:).^2;
X(:,end+1) = score1(:);
X(:,end+1) = 1;
% construct data vector
y = score2(:);
% use OLS to estimate weights
w = inv(X'*X)*X'*y;
% visualize
figure; hold on;
scatter(score1,score2,'r.');
ax = axis;
% need more than two points since function may be nonlinear
xx = linspace(ax(1),ax(2),100);
%polyval(w, xx) computes values of polynom with weights w in points of xx
plot(xx,polyval(w,xx),'k-');
title(sprintf('y = %.3f x^2 + %.3f x + %.3f',w(1),w(2),w(3)));