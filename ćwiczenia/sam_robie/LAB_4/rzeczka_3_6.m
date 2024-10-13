clear;
img_uint8 = imread('rzeczkaGamma15.jpg');
obraz = double(img_uint8);

img_uint8 = imread('rzeczka.jpg');
obraz2 = double(img_uint8);

R = obraz2(:, :, 1);
G = obraz2(:, :, 2);
B = obraz2(:, :, 3);

Y = 0 + 0.299 * R + 0.587 * G + 0.114 * B;
Cb = 128 - 0.168736 * R - 0.331264 * G + 0.5 * B;
Cr = 128 + 0.5 * R - 0.418688 * G - 0.081312 * B;

przeskalowany = Y / 255;

Y_gotuje = przeskalowany .^ (1 / 1.5);

Y_15 = Y_gotuje * 255;

R_gamma = Y_15 + 1.402 * (Cr - 128);
G_gamma = Y_15 - 0.344136 * (Cb - 128) - 0.714136 * (Cr - 128);
B_gamma = Y_15 + 1.772 * (Cb - 128);

obraz_gamma_Y = cat(3, R_gamma, G_gamma, B_gamma);

wynik_v_PS_z_mnoznikiem = porownanie_v_PS_z_mnoznikiem(obraz, obraz_gamma_Y, 50);
wynik_v_2_z_mnoznikiem = porownanie_v_2_z_mnoznikiem(obraz, obraz_gamma_Y, 50);

figure;

subplot(2, 2, 1);
imshow(obraz/255);
title('RGB gamma 1.5');

subplot(2, 2, 2);
imshow(obraz_gamma_Y/255);
title('YCbCr, Y gamma 1.5, RGB');

subplot(2, 2, 3);
imshow(wynik_v_PS_z_mnoznikiem/255);
title('porownanie v.PS * 50');

subplot(2, 2, 4);
imshow(wynik_v_2_z_mnoznikiem/255);
title('porownanie v.2 * 50');

