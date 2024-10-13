clear;
img_uint8 = imread('rzeczka.jpg');
obraz = double(img_uint8);

jasny = obraz / 2;

macierz = zeros(size(obraz, 1), size(obraz, 2) + 300, 3);

odwrocony = obraz(:, 301:-1:1, :);

macierz(:, 301:end, :) = jasny;
macierz(:, 1:301, :) = odwrocony;

imshow(macierz / 255);

