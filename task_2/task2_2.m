data = rand(1, 100).^4;
candidates = linspace(0, 1, 100);
errors = zeros(1, 100);
for i=1:100
    %fill vector with error metrics
    errors(i)=sum(abs(data-candidates(i)));
end
figure;
hold on;
plot(candidates, errors, 'r');
xlabel('values');
ylabel('errors');