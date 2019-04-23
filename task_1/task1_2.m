samplesizes = [2 5 10 20 50 100 200 500 1000];
standard_deviations = zeros(1,length(samplesizes));
SEM = zeros(1,length(samplesizes));
for i = 1:length(samplesizes)
    samplesize = samplesizes(i);
    temp_means = zeros(1,1000);
    for j = 1:1000
        sample = normrnd(10,2, [samplesize, 1]);
        temp_means(j) = mean(sample);
    end
    standard_deviations(i)=std(temp_means);
    SEM(i) = 2/sqrt(samplesize);
end
figure;
hold on;
plot(samplesizes, standard_deviations, 'b.');
% plot(samplesizes, standard_deviations, 'r-');
plot(samplesizes, SEM, 'ro');
% plot(samplesizes, SEM, 'g-');
title('Monte Carlo ');
xlabel('sample sizes')
ylabel('values');
legend('experimental','theoretical');