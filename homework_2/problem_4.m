% define number of coin flips
ns = [10 100 1000];
% create a new figure and resize it
figure;
set(gcf,'Position',[100 100 800 300]);
% loop over number of coin flips
for p=1:length(ns)
    % perform 10000 simulations of random coin flips
    flips = round(rand(10000,ns(p)));
    % count number of heads in each simulation
    dist = sum(flips==0,2);
    % initalize subplot
    subplot(1,length(ns),p);
    % plot histogram with bin centers at each possible number of heads
    hist(dist,0:1:ns(p));
    % make sure there are good axis bounds
    ax = axis;
    axis([0 ns(p) ax(3:4)]);
    % label axes and give a title
    xlabel('Number of heads');
    ylabel('Frequency');
    title(sprintf('n = %d',ns(p)));
end