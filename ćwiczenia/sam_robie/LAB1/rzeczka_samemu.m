img_uint8 = imread('rzeczka.jpg');
obraz = double(img_uint8);

obraz(:, 10:50, 1) = 255;
obraz(:, 10:50, 2) = 255;
obraz(:, 10:50, 3) = 0;

imshow(obraz/255)
