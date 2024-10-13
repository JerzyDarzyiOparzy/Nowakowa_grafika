img_uint8 = imread('rzeczka2.png');
obraz = double(img_uint8);

function wyjscie = PrzytnijZakres(wejscie)
  wejscie(wejscie < 0) = 0;
  wejscie(wejscie > 255) = 255;
  wyjscie = wejscie;
end


function LUT = LUT_ZmienKontrast(wspKontrastu)
  wspMn = ((255 + wspKontrastu) / 255) ^ 2;
  LUT = (0:255);
  LUT = 127.5 + (LUT - 127.5) * wspMn;
  LUT = PrzytnijZakres(LUT);
  wyjscie = round(LUT);
end


function wyjscie = LUT_zastosuj(wejscie, ZmienKontrast)
  wyjscie = ZmienKontrast(wejscie + 1);
end


wspKontrastu = 60;

tabela_LUT = LUT_ZmienKontrast(wspKontrastu);
poprawiony = LUT_zastosuj(obraz, tabela_LUT);

figure;

subplot(1, 2, 1);
imshow(obraz/255);
title('org');

subplot(1, 2, 2);
imshow(poprawiony/255);
title('kontrast + 60')
