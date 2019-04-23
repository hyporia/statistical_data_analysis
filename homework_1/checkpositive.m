function [result] = checkpositive(input_matrix)
rows_num = size(input_matrix, 1);
cols_num = size(input_matrix, 2);
result = ones(1, rows_num);
for i=1:rows_num
    answer = 'yes';
    for j=1:cols_num
        if input_matrix(i, j) <= 0
            result(i)=0;
            answer = 'no';
            continue;
        end
    end
    disp('Row ' + string(i) + ': ' + answer)
end
