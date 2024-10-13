img_uint8 = imread('plaza1.png');
obraz = double(img_uint8);

wektor_obrazu = reshape(obraz, [], 3);

figure;
subplot(2, 2, 1);
hist(wektor_obrazu(:), 100);
title('R+G+B');

subplot(2, 2, 2);
hist(wektor_obrazu(:, 1), 100);
title('R');

subplot(2, 2, 3);
hist(wektor_obrazu(:, 2), 100);
title('G');

subplot(2, 2, 4);
hist(wektor_obrazu(:, 3), 100);
title('B');
