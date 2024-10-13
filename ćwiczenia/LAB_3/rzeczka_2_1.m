clear;

img_uint8 = imread('rzeczka2.png');
obraz = double(img_uint8);

gamma = 0.7;

obraz_po_korekcji = KorekcjaGamma(obraz, gamma);

subplot(1, 2, 1);
imshow(obraz/255);
title('Oryginalny obraz');

subplot(1, 2, 2);
imshow(obraz_po_korekcji/255);
title('Po korekcji gamma');


