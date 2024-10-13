clear;
img = imread('rzeczka.jpg');
img_double = double(img) / 255;

R = img_double(:, :, 1);
G = img_double(:, :, 2);
B = img_double(:, :, 3);

[H, S, L] = rgb_to_hsl(R, G, B, img_double);

figure;
subplot(2, 2, 1); imshow(img); title('Org');
subplot(2, 2, 2); imshow(H / 360); title('Hue');
subplot(2, 2, 3); imshow(S); title('Saturation');
subplot(2, 2, 4); imshow(L); title('Lightness');

