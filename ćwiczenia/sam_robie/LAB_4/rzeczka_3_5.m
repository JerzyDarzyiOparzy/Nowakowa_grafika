img_uint8 = imread('rzeczka.jpg');
obraz = double(img_uint8);

R = obraz(:, :, 1);
G = obraz(:, :, 2);
B = obraz(:, :, 3);

Y = 0 + 0.299 * R + 0.587 * G + 0.114 * B;
Cb = 128 - 0.168736 * R - 0.331264 * G + 0.5 * B;
Cr = 128 + 0.5 * R - 0.418688 * G - 0.081312 * B;

Y_rounded = round(Y);
Cb_rounded = round(Cb);
Cr_rounded = round(Cr);

R_przywrocone = Y_rounded + 1.402 * (Cr_rounded - 128);
G_przywrocone = Y_rounded - 0.344136 * (Cb_rounded - 128) - 0.714136 * (Cr_rounded - 128);
B_przywrocone = Y_rounded + 1.772 * (Cb_rounded - 128);

R_przywrocone_rounded = round(R_przywrocone);
G_przywrocone_rounded = round(G_przywrocone);
B_przywrocone_rounded = round(B_przywrocone);

obraz_przywrocony = cat(3, R_przywrocone_rounded, G_przywrocone_rounded, B_przywrocone_rounded);

roznica_modulu = max(abs(obraz(:) - obraz_przywrocony(:)));

fprintf('Maksymalny moduł różnicy: %f\n', roznica_modulu);

wynik_v_PS_z_mnoznikiem = porownanie_v_PS_z_mnoznikiem(obraz, obraz_przywrocony, 250);
wynik_v_2_z_mnoznikiem = porownanie_v_2_z_mnoznikiem(obraz, obraz_przywrocony, 300);

figure;

subplot(2, 2, 1);
imshow(obraz/255);
title('RGB org');

subplot(2, 2, 2);
imshow(obraz_przywrocony/255);
title('to YCbCr, to RGB');

subplot(2, 2, 3);
imshow(wynik_v_PS_z_mnoznikiem/255);
title('porownanie v.PS * 250');

subplot(2, 2, 4);
imshow(wynik_v_2_z_mnoznikiem/255);
title('porownanie v.2 * 300');

