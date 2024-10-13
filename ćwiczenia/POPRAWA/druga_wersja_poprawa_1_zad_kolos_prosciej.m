clear;
img_uint8 = imread('rzeczka.jpg');
obraz = double(img_uint8);

ciemny = obraz / 2;

macierz = [ciemny(:, 1:size(ciemny, 2)/2, :) obraz(:, size(obraz, 2)/2:-1:1, :)];

imshow(macierz / 255);
