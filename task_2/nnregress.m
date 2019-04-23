function yy = nnregress(xx,x,y)
result = zeros(size(xx));
for i=1:length(xx)
    distances = abs(xx(i) - x);
    min_dist = min(distances);
    index = distances==min_dist;
    result(i) = y(index);
end
yy = result;