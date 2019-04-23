% construct regressor matrix and data vector
X = score1(:);
X(:,end+1) = 1;
y = score2(:);
%%%%% beginning of the gradient descent routine
% define step size
stepsize = .01;
% initialize weights and other stuff
%���������� - ������� ���� � ����������� ������ (����� � ����� ��������� ��� ���������)
wcurrent = zeros(2,1);
errorold = Inf; % this holds the squared error obtained previously
% loop until error starts to increase
while 1
    % ������� ������
    errorcurrent = sum((y-X*wcurrent).^2);
    % for debugging purposes:
    %fprintf('Current squared error = %.3f\n',errorcurrent);
    % ���� ������ ������ �����
    if errorcurrent >= errorold
    break;
     end
    % save the old results
    wold = wcurrent;
    errorold = errorcurrent;
    % compute gradient vector (dimensions are parameters x 1)
    %��������� ����������� (��������) ������
    thegrad = -2*X'*(y-X*wcurrent);
    % normalize it to be unit length by dividing by its length
    %   ������������ ���������
    thegrad = thegrad / sqrt(sum(thegrad.^2));
    % update weights
    % ��������� ���� � �������, ��������������� ������
    wcurrent = wcurrent - stepsize*thegrad;
end
% our final answer is the set of the weights before we took that final bad step
w = wold;

figure; hold on;
scatter(score1,score2,'r.');
ax = axis;
plot(ax(1:2),w(1)*ax(1:2)+w(2),'k-');
title(sprintf('y = %.3f x + %.3f',w(1),w(2)));