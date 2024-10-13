clear;

img_uint8 = imread('plaza1.png');
obraz = double(img_uint8);

we_min = min(obraz(:));
we_max = max(obraz(:));

przeskalowany = double(255 * (obraz - we_min) / (we_max - we_min));

wektor_obrazu = reshape(przeskalowany, [], 3);

figure;
subplot(3, 2, 1);
imshow(obraz/255);
title('org');

subplot(3, 2, 2);
imshow(przeskalowany/255);
title('zmieniony');

subplot(3, 2, 3);
hist(wektor_obrazu(:), 100);
title('R+G+B');

subplot(3, 2, 4);
hist(wektor_obrazu(:, 1), 100);
title('R');

subplot(3, 2, 5);
hist(wektor_obrazu(:, 2), 100);
title('G');

subplot(3, 2, 6);
hist(wektor_obrazu(:, 3), 100);
title('B');
