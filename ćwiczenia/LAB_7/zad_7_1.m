clear; clf;

input = csvread("punktman.csv");

function output_matrix = utworzMacierz(Sx, Sy)
    output_matrix = [Sx 0 0; 0 Sy 0; 0 0 1];
end

matrix = utworzMacierz(0.1, 0.2);

punktyPrzetworzone = [input(:, 1)'; input(:, 2)'; ones(1, size(input, 1))];

output = matrix * punktyPrzetworzone;

figure;
hold on;
plot(output(1,:), output(2,:), 'sk', 'markersize', 4)
