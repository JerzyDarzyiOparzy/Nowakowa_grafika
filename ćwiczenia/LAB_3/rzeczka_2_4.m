img_uint8 = imread('rzeczka2.png');
obraz = double(img_uint8);

jasnosc = 50;
LUT_jasnosc_plus_50 = stworz_LUT(jasnosc);

obraz_wynikowy = LUT_zastosuj(obraz, LUT_jasnosc_plus_50);

subplot(1, 2, 1);
imshow(obraz/255);
title('Oryginalny obraz');

subplot(1, 2, 2);
imshow(obraz_wynikowy);
title('Po zastosowaniu LUT');


