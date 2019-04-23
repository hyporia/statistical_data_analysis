x = -1:0.1:1;
figure;
hold on
for k=1:20
    y = randn() * x.^4 + randn() * x.^3 +randn() * x.^2 + randn() * x + randn();
    plot(x, y);
end
ylabel('y');
xlabel('x');