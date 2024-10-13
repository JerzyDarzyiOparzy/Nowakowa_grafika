img_uint8 = imread('rzeczka2.png');
obraz = double(img_uint8);

function LUT = stworz_LUT(wsp_gamma)
  LUT = (0:255) / 255;
  LUT = LUT .^(1 / wsp_gamma);
  LUT = LUT * 255;
  LUT(LUT < 0) = 0;
  LUT(LUT > 255) = 255;
  LUT = round(LUT);
end

function wyjscie = zastosuj_LUT(wejscie, LUT)
  wyjscie = LUT(wejscie + 1);
end

wsp_gamma = 1.5;

tablica_LUT = stworz_LUT(wsp_gamma);
poprawiony = zastosuj_LUT(obraz, tablica_LUT);

figure;

subplot(1, 2, 1);
imshow(obraz/255);
title('org');

subplot(1, 2, 2);
imshow(poprawiony/255);
title('LUT z gamma 1.5')
