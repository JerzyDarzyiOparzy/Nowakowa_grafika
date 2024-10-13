img_uint8 = imread('rzeczka2.png');
obraz = double(img_uint8);

wspKontrastu = 60;

LUT_kontrast_plus_60 = stworz_LUT_kontrast(wspKontrastu);
LUT_kontrast_minus_60 = stworz_LUT_kontrast(-wspKontrastu);

obraz_kontrast_plus_60 = LUT_zastosuj(obraz, LUT_kontrast_plus_60);
obraz_kontrast_minus_60 = LUT_zastosuj(obraz, LUT_kontrast_minus_60);


subplot(1, 3, 2);
imshow(obraz/255);
title('Oryginalny obraz');

subplot(1, 3, 3);
imshow(obraz_kontrast_plus_60);
title('Kontrast +60');

subplot(1, 3, 1);
imshow(obraz_kontrast_minus_60);
title('Kontrast -60');

