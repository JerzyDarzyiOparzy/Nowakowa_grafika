clear;
img_uint8 = imread('rzeczka.jpg');
obraz = double(img_uint8);

macierz = zeros(size(obraz));

jasny = obraz / 2;

macierz(:, 1:size(macierz, 2) / 2, :) = jasny(:, 1:size(jasny, 2) / 2, :);
macierz(:, (size(macierz, 2) / 2 + 1):end, :) = obraz(:, (size(obraz, 2) / 2):-1:1, :);

imshow(macierz / 255);

