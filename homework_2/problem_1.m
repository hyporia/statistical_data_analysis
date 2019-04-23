x = [0:.1:100];
y = normpdf(x,50,10);
figure;
plot(x,y, 'r')
xlabel('x');
ylabel('y');
title('Gaussian');