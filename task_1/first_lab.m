figure;
hold on;
h1 = plot([-1 1],[4 -2],'ro-');
h2 = scatter(rand(1,30),rand(1,30),'g.');
axis([-3 3 -5 5]);
xlabel('Variable X');
ylabel('Variable Y');
title('Test');
legend([h1 h2],{'Plot' 'Scatter'});
print('-dpng','test.png');