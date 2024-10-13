clear;

img = imread('rzeczka.jpg');

[rows, cols, ~] = size(img);
upper_half = img(1:rows/2, :, :);

lower_half = img((rows/2):3:end, :, :);

new_img = [upper_half; lower_half];

figure;
subplot(1, 2, 1); imshow(new_img);
subplot(1, 2, 2); imshow(img);
title('Nowy obraz: górna połowa + co trzeci wiersz dolnej połowy');

