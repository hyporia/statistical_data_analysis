% генерация данных
%подправил (в сравнении с тем, что было в задании) для наглядности
heightM = 50 + 10*randn(1,100);
heightF = 32 + 9*randn(1,60);
weightM = 50 + 2*heightM + 10*randn(size(heightM));
weightF = 70 + 3*heightF + 10*randn(size(heightF));

class_males = [heightM;weightM];
class_females = [heightF;weightF];
% visualize the data
figure; hold on;
h1 = scatter(class_males(1,:),class_males(2,:),'ko','filled');
h2 = scatter(class_females(1,:),class_females(2,:),'wo','filled');
set([h1 h2],'MarkerEdgeColor',[.5 .5 .5]);
xlabel('Height');
ylabel('Weight');
% prepare a grid of points to evaluate the model at
ax = axis;
xvals = linspace(ax(1),ax(2),200);
yvals = linspace(ax(3),ax(4),200);
[xx,yy] = meshgrid(xvals,yvals);
gridX = [xx(:) yy(:)];
% Вычисляем центроиды для мужчин и женщин
centroid_males = mean(class_males,2); % 2 x 1
centroid_females = mean(class_females,2); % 2 x 1
% compute distance to centroid of males
dist_to_males = sqrt(sum(bsxfun(@minus,gridX,centroid_males').^2,2));
 % compute distance to centroid of females
dist_to_females = sqrt(sum(bsxfun(@minus,gridX,centroid_females').^2,2));
output_image = dist_to_males > dist_to_females;
output_image = reshape(output_image,[length(yvals) length(xvals)]);
[d,hC] = contour(xvals,yvals,output_image,[.7 .7]);
set(hC,'LineWidth',3,'LineColor',[1 0 0]); % make the line thick and red
% add legend
legend([h1 h2 hC],{'Males' 'Females' 'nearest-prototype classification'}, ...
'Location','NorthOutside');

%Вычисляем точность модели
all_data = [heightM' weightM'; heightF' weightF';];
correct_classes = [ones(length(heightM), 1);zeros(length(heightF), 1)];
% compute distance to centroid of males
dist_to_males = sqrt(sum(bsxfun(@minus,all_data,centroid_males').^2,2));
 % compute distance to centroid of females
dist_to_females = sqrt(sum(bsxfun(@minus,all_data,centroid_females').^2,2));
%Если точка ближе к центроиду males, то классифицируем её как мужчину 
%т.е. dist_to_males < dist_to_females = true = 1
predictions = dist_to_males < dist_to_females;
predictions = predictions == correct_classes;
accuracy = sum(predictions) / length(correct_classes);

title(sprintf("Accuracy of the model = %.2f", accuracy));