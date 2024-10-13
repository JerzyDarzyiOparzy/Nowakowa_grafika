img_uint8 = imread('plaza1.png');
obraz = double(img_uint8);

min_czerwony = min(obraz(:, :, 1)(:));
max_czerwony = max(obraz(:, :, 1)(:));

min_zielony = min(obraz(:, :, 2)(:));
max_zielony = max(obraz(:, :, 2)(:));

min_niebieski = min(obraz(:, :, 3)(:));
max_niebieski = max(obraz(:, :, 3)(:));

przeskalowany = obraz;
przeskalowany(:, :, 1) = double(255 * (obraz(:, :, 1) - min_czerwony) / (max_czerwony - min_czerwony));
przeskalowany(:, :, 2) = double(255 * (obraz(:, :, 2) - min_zielony) / (max_zielony - min_zielony));
przeskalowany(:, :, 3) = double(255 * (obraz(:, :, 3) - min_niebieski) / (max_niebieski - min_niebieski));

figure;
subplot(3, 2, 1);
imshow(obraz/255);
title('org');

subplot(3, 2, 2);
imshow(przeskalowany/255);
title('zmieniony');

subplot(3, 2, 3);
hist(przeskalowany(:, :, :)(:), 100);
title('R+G+B');

subplot(3, 2, 4);
hist(przeskalowany(:, :, 1)(:), 100);
title('R');

subplot(3, 2, 5);
hist(przeskalowany(:, :, 2)(:), 100);
title('G');

subplot(3, 2, 6);
hist(przeskalowany(:, :, 3)(:), 100);
title('B');
