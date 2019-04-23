matrix_1 = [3.0 -1.0 1.5; 2.0 0.0 0.0; 1.0 1.0 1.0];
new_row = [1 1 1];
matrix_1 = [matrix_1; new_row];
matrix_1(1, 3) = 0;
result = matrix_1(:,3)';
result