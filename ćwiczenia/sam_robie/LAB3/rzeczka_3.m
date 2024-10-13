img_uint8 = imread('rzeczka2.png');
obraz = double(img_uint8);

function wyjscie = ZmienJasnosc(wejscie, wspJasnosci)
  wyjscie = PrzytnijZakres(wejscie + wspJasnosci);
end

function wyjscie = PrzytnijZakres(wejscie)
  wejscie(wejscie < 0) = 0;
  wejscie(wejscie > 255) = 255;
  wyjscie = wejscie;
end

wspJasnosci = 50;

jasniejszy = ZmienJasnosc(obraz, wspJasnosci);
ciemniejszy = ZmienJasnosc(obraz, -wspJasnosci);

figure;

subplot(1, 3, 1);
imshow(ciemniejszy/255);
title('jasn - 50');

subplot(1, 3, 2);
imshow(obraz/255);
title('org');

subplot(1, 3, 3);
imshow(jasniejszy/255);
title('jasn + 50');
