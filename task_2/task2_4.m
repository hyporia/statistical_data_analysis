modelfun = @(a, b,x)a.^x+b;
%initial params
a=1.3;b=1;
xx = linspace(0, 1, 100);
%generate noise data
y=modelfun(a, b, xx) + randn(1, 100)/50;

options = optimset('Display','iter', ...
    'OutputFcn',@(a,b,x)outputfcnplot(a,b,x,1,y));

[x,resnorm,residual,exitflag,output] = lsqnonlin(modelfun,a,b,xx, [], [], options)

