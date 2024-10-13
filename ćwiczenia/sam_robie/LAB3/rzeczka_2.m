img_uint8 = imread('rzeczka2.png');
obraz = double(img_uint8);

function wyjscie = korekcjaGamma(wejscie, wsp_gamma)
  wejscie = wejscie / 255;
  wejscie = wejscie .^(1 / wsp_gamma);
  wyjscie = wejscie * 255;
end

wsp_gamma = 1.5;

poprawiony = korekcjaGamma(obraz, wsp_gamma);

figure;

subplot(1, 2, 1);
imshow(obraz/255);
title('org');

subplot(1, 2, 2);
imshow(poprawiony/255);
title('gamma 1.5');
