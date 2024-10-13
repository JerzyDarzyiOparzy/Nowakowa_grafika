img_u8 = imread('plaza1.png');
img_dbl = double(img_u8) / 255;
img_conv = img_dbl;

max_value = max(img_dbl(:));
min_value = min(img_dbl(:));

arrayforsort = img_dbl(:);
sorted = sort(arrayforsort);

we_min = sorted(round(length(sorted) * 0.1));
we_max = sorted(round(length(sorted) * 0.9));

img_conv(img_conv < we_min) = 0;
img_conv(img_conv > we_max) = 1;

img_conv = (img_conv - we_min) / (we_max - we_min) * 255;

img_rs = reshape(img_conv, [], 3);

figure;

subplot(3, 2, 1);
imshow(img_dbl);
title('Oryginal');

subplot(3, 2, 2);
imshow(img_conv / 255);
title('Zmieniony');

subplot(3, 2, 3);
hist(img_rs(:), 0:250);
xlim([0, 300]);
title('R+G+B');

subplot(3, 2, 4);
hist(img_rs(:, 1), 0:250);
xlim([0, 300]);
title('R');

subplot(3, 2, 5);
hist(img_rs(:, 2), 0:250);
xlim([0, 300]);
title('G');

subplot(3, 2, 6);
hist(img_rs(:, 3), 0:250);
xlim([0, 300]);
title('B');

