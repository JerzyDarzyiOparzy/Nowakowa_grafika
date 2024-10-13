img_uint8 = imread('plaza1.png');
obraz = double(img_uint8);

obraz_czerowny = obraz;

obraz_czerowny(:, :, 1) = obraz(:, :, 3);
obraz_czerowny(:, :, 3) = obraz(:, :, 1);

imshow(obraz_czerowny/255);

