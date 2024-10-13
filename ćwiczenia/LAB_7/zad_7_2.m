clear; clf;

input = csvread("punktman.csv");

function output_matrix = utworzMacierz(Tx, Ty)
  output_matrix = [ 1 0 Tx ; 0 1 Ty; 0 0 1 ];
end

avg_x = -mean(input(:,1)(:));
avg_y = -mean(input(:,2)(:));

matrix = utworzMacierz(avg_x, avg_y);

punktyPrzetworzone = [input(:, 1)'; input(:, 2)'; ones(1, size(input, 1))];

output = matrix * punktyPrzetworzone;

figure;
hold on;
plot(output(1,:), output(2,:), 'gx', 'markersize', 4)
legend;
