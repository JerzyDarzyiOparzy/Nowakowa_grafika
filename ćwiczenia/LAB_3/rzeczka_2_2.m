clear;

img_uint8 = imread('rzeczka.jpg');
obraz = double(img_uint8);

gamma = 1.5;

obraz_po_korekcji = KorekcjaGamma(obraz, gamma);

dozapisu = obraz_po_korekcji/255;
imwrite(dozapisu, 'rzeczkaGamma15.jpg');

subplot(1, 2, 1);
imshow(obraz/255);
title('Oryginalny obraz');

subplot(1, 2, 2);
imshow(obraz_po_korekcji/255);
title('Po korekcji gamma');

img = imread('rzeczkaGamma15.jpg');
