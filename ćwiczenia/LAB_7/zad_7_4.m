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

function output_matrix = utworzMacierzObrotu(obr)
  output_matrix = [ cos(obr) -sin(obr) 0 ;
                    sin(obr) cos(obr)  0 ;
                    0        0         1 ];
end


avg_x = -mean(input(:,1)(:));
avg_y = -mean(input(:,2)(:));

matrix_move = utworzMacierzPrzesuniecia(avg_x, avg_y);
matrix_rotate = utworzMacierzObrotu(pi/2);
matrix_transform = utworzMacierzTransformacji(.01, .01);

punktyPrzetworzone = [input(:, 1)'; input(:, 2)'; ones(1, size(input, 1))];

macierz_obrobki = matrix_transform * matrix_rotate * matrix_move;

output = macierz_obrobki * punktyPrzetworzone;

figure;
plot(output(1,:), output(2,:), 'gx')
legend;
