% compute the difference between the post- and pre-manipulation measurements
x = data2b - data2a;
%actial mean of data
actualval = mean(x);
% centering x
xcentered = x - mean(x);
% now, let's use bootstrapping to see what sort of x-values are likely
% to be observed given our sample size
vals = zeros(1,10000);
for p=1:10000
 % create bootstrap indices
 ix = ceil(length(xcentered)*rand(1,length(xcentered)));
 % record the result got from boostrapped sample
 vals(p) = mean(xcentered(ix)); 
end
pval = sum(abs(vals) > abs(actualval)) / 10000;
pval