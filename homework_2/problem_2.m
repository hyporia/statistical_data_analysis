actualval = std(mean(data1,2));
alldata = data1(:);
vals = zeros(1,10000);
for p=1:10000
    datashuffle = alldata(randperm(length(alldata)));
    datashuffle = reshape(datashuffle,[3 20]);
    vals(p) = std(mean(datashuffle,2));
end
pval = sum(vals > actualval) / 10000;
pval