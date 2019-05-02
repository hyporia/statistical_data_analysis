data = sortrows([Genders Age SpendingScores], 1);
data = data(:,[2 3]);

males_num = sum(Genders);
females_num = length(Genders) - males_num;

females_ages = data(1:females_num,1:1)';
females_SS = data(1:females_num,2:2)';
males_ages = data(females_num+1:end,1:1)';
males_SS = data(females_num+1:end,2:2)';

class_males = [males_ages; males_SS];
class_females = [females_ages; females_SS];

% visualize the data
figure; hold on;
h1 = scatter(class_males(1,:),class_males(2,:),'ko','filled');
h2 = scatter(class_females(1,:),class_females(2,:),'wo','filled');
set([h1 h2],'MarkerEdgeColor',[.5 .5 .5]);
xlabel('Height');
ylabel('Weight');