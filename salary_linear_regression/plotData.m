function plotData(X, y)

figure;
plot(X, y, 'rx');
xlabel('Years of Experience');
ylabel('Salary');

axis([0 15 0 160000]);

end

