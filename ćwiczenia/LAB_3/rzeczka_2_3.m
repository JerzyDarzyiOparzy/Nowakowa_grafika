clear;

img_uint8 = imread('rzeczka2.png');
obraz = double(img_uint8);

wspJasnosci = 50;

obraz_korekcja_jasnosci = ZmienJasnosc(obraz, wspJasnosci);
obraz_korekcja_jasnosci2 = ZmienJasnosc(obraz, -wspJasnosci);

subplot(1, 3, 1);
imshow(obraz_korekcja_jasnosci2/255);
title('Jasn - 50');

subplot(1, 3, 2);
imshow(obraz/255);
title('org');

subplot(1, 3, 3);
imshow(obraz_korekcja_jasnosci/255);
title('Jasn + 50');



