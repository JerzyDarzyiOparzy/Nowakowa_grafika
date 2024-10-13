clear;
input = csvread('punktman.csv');

avg_x = -mean(input(:, 1)(:));
avg_y = -mean(input(:, 2)(:));

Sx =0.01 ; Sy =0.01 ; Tx = avg_x; Ty = avg_y; obr = pi/2;

matrix_skalowanie = [Sx 0  0;
                     0  Sy 0;
                     0  0  1 ];

matrix_przesuwanie = [1 0 Tx;
                      0 1 Ty;
                      0 0 1 ];

matrix_obrot = [cos(obr) -sin(obr) 0;
                sin(obr) cos(obr)  0;
                0        0         1 ];

punktyPrzetworzone = [input(:, 1)'; input(:, 2)'; ones(1, size(input, 1))];

macierz_obrobki = matrix_skalowanie * matrix_obrot * matrix_przesuwanie;

output = macierz_obrobki * punktyPrzetworzone;

figure;
plot(output(1, :), output(2, :), 'sk');
