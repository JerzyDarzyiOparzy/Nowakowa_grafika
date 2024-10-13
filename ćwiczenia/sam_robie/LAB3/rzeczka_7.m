img_uint8 = imread('rzeczka2.png');
obraz = double(img_uint8);

punkty_R = [0, 0; 60, 120; 110, 110; 255, 255];
punkty_G = [0, 0; 255, 255];
punkty_B = [0, 0; 50, 0; 255, 255];

function LUT = stworz_LUT_kolor(punkty)
  LUT = (0:255);

  for i = 1:length(punkty) - 1
    x1 = punkty(i, 1);
    y1 = punkty(i, 2);
    x2 = punkty(i + 1, 1);
    y2 = punkty(i + 1, 2);

    a = (y2 - y1) / (x2 - x1);
    b = y1 - a * x1;

    for x = x1:x2
      y = round(a * x + b);
      LUT(x + 1) = y;
    end
  end
end


function obraz_wynikowy = LUT_zastosuj_kolor(wejscie, LUT, kolor)
    obraz_wynikowy = wejscie;
    if kolor == 'R'
        obraz_wynikowy(:, :, 1) = LUT(wejscie(:, :, 1) + 1);
    elseif kolor == 'G'
        obraz_wynikowy(:, :, 2) = LUT(wejscie(:, :, 2) + 1);
    elseif kolor == 'B'
        obraz_wynikowy(:, :, 3) = LUT(wejscie(:, :, 3) + 1);
    end
end

LUT_czerwony = stworz_LUT_kolor(punkty_R);
LUT_zielony = stworz_LUT_kolor(punkty_G);
LUT_niebieski = stworz_LUT_kolor(punkty_B);

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



