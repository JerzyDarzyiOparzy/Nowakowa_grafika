clear;
img = imread('rzeczka.jpg');
obraz = double(img) / 255;

R_zeskalowany = obraz(:, :, 1);
G_zeskalowany = obraz(:, :, 2);
B_zeskalowany = obraz(:, :, 3);

[H, S, L] = rgb_to_hsl(R_zeskalowany, G_zeskalowany, B_zeskalowany, obraz);

L = L .* 0.7

[R, G, B] = hsl_to_rgb(H, S, L);

obrazek = cat(3, R, G, B) / 255;

figure;

subplot(1, 2, 1);imshow(obraz);title('org');
subplot(1, 2, 2);imshow(obrazek);title('Lightness gamma 0.7');
