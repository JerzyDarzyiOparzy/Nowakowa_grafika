clear;

function wynik = porownanie_v_PS(obraz_stary, obraz_nowy)
    roznica = abs(obraz_stary - obraz_nowy);
    wynik = roznica;
end

function wynik = porownanie_v_2(obraz_stary, obraz_nowy)
    roznica = obraz_nowy - obraz_stary + 0.5;
    wynik = przytnij_zakres(roznica);
end


img_uint8 = imread('rzeczka.jpg');
obraz_stary = double(img_uint8);
img = imread('rzeczkaGamma15.jpg');
obraz_przetworzony = double(img);

wynik_v_PS_z_mnoznikiem = porownanie_v_PS_z_mnoznikiem(obraz_stary, obraz_przetworzony, 4);
wynik_v_2_z_mnoznikiem = porownanie_v_2_z_mnoznikiem(obraz_stary, obraz_przetworzony, 3);

figure;
subplot(2, 2, 1);
imshow(obraz_stary/255);
title('org');

subplot(2, 2, 2);
imshow(obraz_przetworzony/255);
title('gamma15');

subplot(2, 2, 3);
imshow(wynik_v_PS_z_mnoznikiem/255);
title('Porównanie v.PS z mnożnikiem');

subplot(2, 2, 4);
imshow(wynik_v_2_z_mnoznikiem/255);
title('Porównanie v.2 z mnożnikiem');

