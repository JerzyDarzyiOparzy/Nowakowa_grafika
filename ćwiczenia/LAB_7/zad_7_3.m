clear; clf;

input = csvread("punktman.csv");

function output_matrix = utworzMacierz(obr)
  output_matrix = [ cos(obr) -sin(obr) 0 ;
                    sin(obr) cos(obr) 0 ;
                    0        0        1 ];
end

matrix = utworzMacierz(-pi/3);

punktyPrzetworzone = [input(:, 1)'; input(:, 2)'; ones(1, size(input, 1))];

output = matrix * punktyPrzetworzone;

figure;
hold on;
plot(input(:,1), input(:,2), 'yo', 'markersize', 4)
plot(output(1,:), output(2,:), 'gx', 'markersize', 4)
legend;

