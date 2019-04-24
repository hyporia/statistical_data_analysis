y = rand(1,80)>.3;
ypredict = rand(size(y))>.5;
overall_correct = 0;
zero_correct = 0;
zeros_num = 0;
for i=1:length(y)
    if y(i) == ypredict(i)
        overall_correct = overall_correct + 1;
    end
    
    if y(i) == 0
        zeros_num = zeros_num + 1;
        if y(i) == ypredict(i)
            zero_correct = zero_correct + 1;
        end
    end
end
fprintf('Overall correct persent = %0.2f\n', overall_correct / length(y));
fprintf('Zero class correct persent = %0.2f\n', zero_correct / zeros_num);