function [X_res,Y_res] = bstrpsample(X,Y,N)
    sizes = size(X);
    rows_num = sizes(1);
    indices = datasample(1:rows_num, N);
    X_res = X(indices(1:N),:);
    Y_res = Y(indices(1:N),:);
end

