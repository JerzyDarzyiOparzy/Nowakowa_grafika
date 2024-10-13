img_uint8 = imread('rzeczka.jpg');
obraz = double(img_uint8);

negatyw = 255 - obraz;

imshow(negatyw/255);
