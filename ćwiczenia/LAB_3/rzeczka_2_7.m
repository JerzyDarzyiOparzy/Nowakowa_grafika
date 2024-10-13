img_uint8 = imread('rzeczka2.png');
obraz = double(img_uint8);

LUT_czerwony = stworz_LUT_kolor('R');
LUT_zielony = stworz_LUT_kolor('G');
LUT_niebieski = stworz_LUT_kolor('B');

obraz_wynikowy = obraz;
obraz_wynikowy = LUT_zastosuj_kolor(obraz_wynikowy, LUT_czerwony, 'R');
obraz_wynikowy = LUT_zastosuj_kolor(obraz_wynikowy, LUT_zielony, 'G');
obraz_wynikowy = LUT_zastosuj_kolor(obraz_wynikowy, LUT_niebieski, 'B');

subplot(1, 2, 1);
imshow(obraz/255);
title('Oryginalny obraz');

subplot(1, 2, 2);
imshow(obraz_wynikowy/255);
title('Po zastosowaniu LUT');

