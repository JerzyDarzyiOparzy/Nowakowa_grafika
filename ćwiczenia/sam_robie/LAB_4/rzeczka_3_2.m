img_uint8 = imread('rzeczka.jpg');
obraz = double(img_uint8);

R = obraz(:, :, 1);
G = obraz(:, :, 2);
B = obraz(:, :, 3);

szarosc_srednia = (R + G + B) / 3;
szarosc_szary = 0.2126 * R + 0.7152 * G + 0.0722 * B;

wynik_v_PS_z_mnoznikiem = porownanie_v_PS_z_mnoznikiem(szarosc_szary, szarosc_srednia, 4);
wynik_v_2_z_mnoznikiem = porownanie_v_2_z_mnoznikiem(szarosc_szary, szarosc_srednia, 3);


figure;

subplot(2, 2, 1);
imshow(szarosc_szary/255);
title('Szary');

subplot(2, 2, 2);
imshow(szarosc_srednia/255);
title('Średnia');

subplot(2, 2, 3);
imshow(wynik_v_PS_z_mnoznikiem/255);
title('porownanie v.PS * 4');

subplot(2, 2, 4);
imshow(wynik_v_2_z_mnoznikiem/255);
title('porownanie v.2 * 3');

