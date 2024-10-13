img_uint8 = imread('rzeczka.jpg');
img_dbl = double(img_uint8);

img_dbl(:, 10:50, 1) = 255;
img_dbl(:, 10:50, 2) = 255;
img_dbl(:, 10:50, 3) = 0;

imshow(img_dbl/255);
