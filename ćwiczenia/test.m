img_uint8 = imread('plaza1.png');
obraz = double(img_uint8);

obraz(:, :, 3) = 255;
obraz(:, :, 1) = 255;

imshow(obraz/255);
