img_uint8 = imread('rzeczka2.png');
obraz = double(img_uint8);

LUT_gamma15 = stworz_LUT_gamma1_5();

obraz_wynikowy = LUT_zastosuj(obraz, LUT_gamma15);

subplot(1, 2, 1);
imshow(obraz/255);
title('Oryginalny obraz');

subplot(1, 2, 2);
imshow(obraz_wynikowy);
title('Po zastosowaniu LUT (gamma 1.5)');

