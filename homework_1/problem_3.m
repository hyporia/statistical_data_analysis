figure;
hold on;
plot(timeA, valsA, 'r');
plot(timeB, valsB, 'g');
xlabel('time');
ylabel('value');
title('Experiment 1');
legend({'temperature', 'pressure'});