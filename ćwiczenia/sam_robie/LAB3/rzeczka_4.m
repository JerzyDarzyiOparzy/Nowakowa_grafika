img_uint8 = imread('rzeczka2.png');
obraz = double(img_uint8);

function LUT = stworz_LUT(jasnosc)
  LUT = (0:255) + jasnosc;
  LUT(LUT < 0) = 0;
  LUT(LUT > 255) = 255;
  LUT = round(LUT);
end

function wyjscie = zastosuj_LUT(wejscie, LUT)
  wyjscie = LUT(double(wejscie) + 1);
end

jasnosc = 50;

tabela_LUT = stworz_LUT(jasnosc);
poprawiony = zastosuj_LUT(obraz, tabela_LUT);

figure;

subplot(1, 2, 1);
imshow(obraz/255);
title('org');

subplot(1, 2, 2);
imshow(poprawiony/255);
title('LUT z jasn + 50')

