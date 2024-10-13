img_uint8 = imread('plaza1.png');
obraz = double(img_uint8);

po_zmianie = obraz;

po_zmianie(:, :, 1) = obraz(:, :, 3);
po_zmianie(:, :, 3) = obraz(:, :, 1);

imshow(po_zmianie / 255);




