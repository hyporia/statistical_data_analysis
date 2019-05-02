function R2 = computeR2(model,data)
    %	<model> is a 1 x N vector of model values 
    %	<data> is a 1 x N vector of data points 
    %
    %	return the coefficient of determination (R^2) 
    %	between <model> and <data>.  this value summarizes 
    %	how well <model> approximates <data>, and has 
    %	an upper bound of 100%. 
    %R2 = 1 - SSres/SStot
    %SSres = сумма квадратов остатков регрессии (unexplained variance)
    %SStot =  общая сумма квадратов (total variance)
    
    SSres = sum((data - model).^2);
    SStot = sum((data-mean(data)).^2);
    R2 = 1 - SSres/SStot;
end