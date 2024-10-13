clear; clf;

input = csvread("punktman.csv");

function output_matrix = utworzMacierzTransformacji(Sx, Sy)
  output_matrix = [ Sx 0 0 ;
                    0 Sy 0 ;
                    0 0  1 ];
end

function output_matrix = utworzMacierzPrzesuniecia(Tx, Ty)
  output_matrix = [ 1 0 Tx ;
                    0 1 Ty ;
                    0 0 1  ];
end

min_x = abs(min(input(:,1)(:)));
min_y = abs(min(input(:,2)(:)));

matrix_move = utworzMacierzPrzesuniecia(min_x, min_y);
matrix_move_2 = utworzMacierzPrzesuniecia(min_x, -min_y/2);
matrix_transform = utworzMacierzTransformacji(1, -.5);

punktyPrzetworzone = [input(:, 1)'; input(:, 2)'; ones(1, size(input, 1))];

macierz_obrobki = matrix_move_2 * matrix_transform;

gora = matrix_move * punktyPrzetworzone;
dul = macierz_obrobki * punktyPrzetworzone;
output = [gora, dul];

figure;
plot(output(1,:), output(2,:), 'gx')
legend;
