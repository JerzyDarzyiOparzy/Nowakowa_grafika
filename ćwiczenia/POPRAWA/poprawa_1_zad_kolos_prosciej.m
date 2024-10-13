clear;
img_uint8 = imread('rzeczka.jpg');
obraz = double(img_uint8);

jasny = obraz * 2;

odwrocony = obraz(:, 300:-1:1, :);

macierz = [odwrocony jasny];

imshow(macierz / 255);
