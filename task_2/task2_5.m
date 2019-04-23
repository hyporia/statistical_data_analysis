N = 1000;
x =  linspace(1, 100, N);
y =  x.^3 - 3*x.^2 + 2*x + 10 + 10*rand(1, N);
xx = linspace(1, 100, 1000);
%calculate neares neighbours
yy = nnregress(xx,x,y);
figure;
hold on;
d = plot(x, y);
nn = plot(xx, yy);
title('Nearest-neighbor regression');
xlabel('x');
ylabel('y');
legend('Generated sample', 'Nearest-Neighbours');