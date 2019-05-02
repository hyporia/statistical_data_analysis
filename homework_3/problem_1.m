% construct regressor matrix
X = score1(:);
X(:,end+1) = 1; % need a constant regressor
% construct data vector
y = score2(:);
% use OLS to estimate weights
%https://en.wikipedia.org/wiki/Ordinary_least_squares
w = inv(X'*X)*X'*y;
% visualize
figure; hold on;
scatter(score1,score2,'r.');
ax = axis;
plot(ax(1:2),w(1)*ax(1:2)+w(2),'k-');
y_pred = polyval(w, score1(:));
R2 = computeR2(y_pred, score2(:))
title(sprintf('y = %.3f x + %.3f\nR2 = %.2f',w(1),w(2),R2));